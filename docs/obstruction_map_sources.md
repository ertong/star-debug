# Obstruction map: protocol evidence and interpretation

External observations were checked on 2026-10-07. Local contracts are verified against the
committed schema; [Obstruction maps](obstruction_maps.md) describes current implementation and
known limitations.

## Evidence boundaries

The repository's protobuf definitions establish field names, types, and enum values. They do
not specify the complete angular projection, accumulation window, signal normalization, or
quaternion-to-grid convention. Official Starlink support explains the customer-facing map;
research papers and their authors' code provide measured behavior. These evidence levels must
remain distinct. No complete vendor specification for the local obstruction-map projection was
found in the sources checked here.

The documentation audit did not query a live dish. The committed map fixture is a synthetic
2×3 EARTH grid.
The tests also retain one captured quaternion with qualitative landmark comments, but do not
include its complete map and simultaneous status. External observations describe particular
firmware, hardware, and measurement periods; they are not measurements of this installation.

## Local wire contract

[`_misc/starlink.proto`](../_misc/starlink.proto) is the committed schema. Generated Dart
interfaces are under [`lib/grpc/starlink/`](../star.debug/lib/grpc/starlink/).

| Message or field | Contract visible in the schema |
| --- | --- |
| `DishGetObstructionMapResponse.num_rows`, `num_cols` | Unsigned 32-bit dimensions |
| `snr` | Repeated float; no unit or normalization comment |
| `min_elevation_deg` | Deprecated float |
| `max_theta_deg` | Float; no projection formula specified |
| `map_reference_frame` | `FRAME_UNKNOWN=0`, `FRAME_EARTH=1`, `FRAME_UT=2` |
| `DishGetStatusResponse.ned2dish_quaternion` | Separate status message, not map capture metadata |
| `Quaternion` | `q_scalar`, `q_x`, `q_y`, `q_z`; ordinary proto3 floats |
| `DishObstructionStats` | Separate fraction, timing, current-state, and readiness statistics |

The response has no device ID, source timestamp, per-cell observation timestamp, or attached
attitude. StarDebug records reception time and the surrounding response's API version. Its
30-second poll interval and 65-second delayed threshold are application choices, not wire rules.

Ordinary proto3 numeric fields use implicit presence: zero values can be omitted from the wire.
Dart still exposes `has*()` methods, but that does not make an omitted zero invalid. A unit
quaternion can therefore have absent zero components. Message presence, finite components, and
norm checks must be considered separately from component presence. See the official
[protobuf field-presence note](https://protobuf.dev/programming-guides/field_presence/).

Other zero-valued fields have the same ambiguity: an absent boresight azimuth can mean zero or
unavailable telemetry. The schema alone cannot distinguish those cases. The current UI chooses
to suppress incomplete arrows; any compatibility change needs a documented capability policy.

## Meaning of the signal grid

The primary [gRPC tools implementation](https://github.com/sparky8512/starlink-grpc-tools/blob/main/starlink_grpc.py)
documents directional values from 0 to 1 and -1 for invalid data. Its `obstruction_map()` slices
the flat list into rows using `num_cols`, supporting StarDebug's row-major interpretation.

The [gRPC tools PNG renderer](https://github.com/sparky8512/starlink-grpc-tools/blob/main/dish_obstruction_map.py)
treats negative samples as no data, clamps values above 1, and blends between obstructed and
unobstructed colors. It describes zero as no signal and one as sufficient signal for full
operation. These normalized values should not be labeled as measured SNR in dB. Its geographic
description should not be generalized to UT frames without additional evidence.

StarDebug follows those value categories, additionally treating nonfinite values as unobserved.
Its red→amber→blue palette is a local presentation choice. Values above 1 are classified clear.
`blocked / observed` counts exactly zero-valued samples and excludes unobserved samples.
Neither this ratio nor four-connected blocked patch size measures sky area, physical obstacle
size, or outage probability. `fractionObstructed` is separately reported telemetry; the checked sources
do not establish its firmware-specific calculation.

## Official interpretation and collection guidance

Starlink says the map accumulates actual satellite connections, whereas the phone's installation
scan is a separate tool. Its
[installation guide](https://starlink.com/me/support/article/6ce7f901-ff51-e65c-8579-c3d87ac1a820)
says map completion can take up to 12 hours. Its
[interpretation guide](https://starlink.com/nz/support/article/71707228-cea9-52d5-6134-f3de8cc7437f)
describes detecting most obstructions within a day and continuing to update the map. These are
guidance for different descriptions of collection, not a guaranteed readiness deadline.

The interpretation guide also explains adaptive satellite switching and an unfilled
geostationary exclusion band. An unobserved band does not establish a physical obstruction;
recorded red cells do not directly predict interruptions. StarDebug's reading guide already
communicates these distinctions. The support pages require JavaScript when opened directly;
the text above was available through the search index of those official pages on the check date.

## Reference frames and attitude: observed behavior

The authors' [SatInView README](https://github.com/aliahan/SatInView#background) reports EARTH
grids with true north at the top and UT grids relative to the terminal, with bottom-center
toward boresight. It associates frames with stationary versus mobile/inactive use in its
measurements. Read the actual response enum rather than inferring frame from subscription or
hardware.

The [January 2026 measurement paper](https://arxiv.org/html/2601.13790v1), sections 2.2 and 4.1,
describes a tilt-dependent UT footprint/reference point and a unit Hamilton quaternion with
`+Z` boresight, `+Y` panel top, and `+X` panel right. It reports unstable boresight azimuth near a
level panel. Section 4.2 shows that motion changes accumulated traces, limiting interpretation
of a cumulative map as an instantaneous environmental view.

StarDebug applies the first two coordinates of `R(q)^T` to geographic North/East/Down vectors,
flips Y for canvas rows, and rotates the display so projected north is up. The algebra is
internally consistent. **Applying that orthogonal panel basis to the raw grid's midpoint is an
implementation assumption**, not a complete vendor-specified pixel-to-angle transform. A
two-dimensional rotation cannot establish historical geographic bearings for a moving antenna.
The current-attitude captions correctly qualify that limitation.

## Geographic calibration boundary

Geographic calibration requires sanitized simultaneous map/status pairs with frame, quaternion,
boresight, dimensions, `maxThetaDeg`, hardware/firmware, and reception times. Independent expected
landmark directions across tilts, headings, rolls, and near-level orientations are missing from
current fixtures, as are paired wire/JSON captures with omitted zero fields.

Quaternion direction and grid origin/projection need independent evidence: a correct rotation
matrix does not prove a correct grid model. Raw values, timestamps, and unknown-frame behavior
remain separate contracts. Resetting a dish map destroys accumulated observations; the
documentation audit performed no resets.

## Canvas accessibility references

Flutter's [TextPainter scaling API](https://api.flutter.dev/flutter/painting/TextPainter/textScaler.html)
accepts the platform text scaler for custom canvas text. Its
[CustomPainter semantics API](https://api.flutter.dev/flutter/rendering/CustomPainter/semanticsBuilder.html)
provides nonvisual descriptions; the default contributes no new nodes. The current gaps are
recorded in [known limitations](obstruction_maps.md#known-limitations-and-regression-coverage).
