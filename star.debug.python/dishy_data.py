#
#   Copyright 2023  Oleg Kutkov <contact@olegkutkov.me>
#
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.  
#
#vim:
#set expandtab
#set tabstop=4

from enum import Enum
import gettext
from common_data import *

_ = lambda x: x

dev_images = {
    'rev1_pre_production': 'resources/devices/dishy_v1.png',
    'rev1_production': 'resources/devices/dishy_v1.png',
    'rev1_proto3': 'resources/devices/dishy_v1.png',
    'rev2_proto1': 'resources/devices/dishy_v2.png',
    'rev2_proto2': 'resources/devices/dishy_v2.png',
    'rev2_proto3': 'resources/devices/dishy_v2.png',
    'rev2_proto4': 'resources/devices/dishy_v2.png',
    'rev3_proto0': 'resources/devices/dishy_v3.png',
    'rev3_proto1': 'resources/devices/dishy_v3.png',
    'rev3_proto2': 'resources/devices/dishy_v3.png',
    'hp1_proto0': 'resources/devices/dishy_hp.png',
    'hp1_proto1': 'resources/devices/dishy_hp.png',
    'hp_flat': 'resources/devices/dishy_hp_flat.png',
    'rev4_proto1': 'resources/devices/dishy_unknown.png',
    'rev_never_gonna_give_you_up': 'resources/devices/entity_astl.png',
    'unknown': 'resources/devices/dishy_unknown.png'
}

###

class MobylityClass(Enum):
    STATIONARY = 0
    NOMADIC = 1
    MOBILE = 2
    UNKNOWN = 100

    @classmethod
    def _missing_(cls, value):
        return cls.UNKNOWN

mobility_class_str = {
    MobylityClass.STATIONARY: _('Stationary'),
    MobylityClass.NOMADIC: _('Nomadic'),
    MobylityClass.MOBILE: _('Mobile'),
    MobylityClass.UNKNOWN: _('Unknown')
}

###

class ServiceClass(Enum):
    UNKNOWN = 0
    CONSUMER = 1
    BUSINESS = 2
    BUSINESS_PLUS = 3
    COMMERCIAL_AVIATION = 4

    @classmethod
    def _missing_(cls, value):
        return cls.UNKNOWN

service_class_str = {
    ServiceClass.UNKNOWN: _('Unknown'),
    ServiceClass.CONSUMER: _('Consumer'),
    ServiceClass.BUSINESS: _('Business'),
    ServiceClass.BUSINESS_PLUS: _('Business Plus'),
    ServiceClass.COMMERCIAL_AVIATION: _('Commercial Aviation')
}

###

class SoftwareUpdateState(Enum):
    UNKNOW = 0
    IDLE = 1
    FETCHING = 2
    PRE_CHECK = 3
    WRITING = 4
    POST_CHECK = 5
    REBOOT_REQUIRED = 6
    DISABLED = 7
    FAULTED = 8

    @classmethod
    def _missing_(cls, value):
        return cls.UNKNOWN

software_update_state_str = {
    SoftwareUpdateState.UNKNOW: _('Unknown'),
    SoftwareUpdateState.IDLE: _('Idle'),
    SoftwareUpdateState.FETCHING: _('Fetching'),
    SoftwareUpdateState.PRE_CHECK: _('Pre Check'),
    SoftwareUpdateState.WRITING: _('Writing'),
    SoftwareUpdateState.POST_CHECK: _('Post Check'),
    SoftwareUpdateState.REBOOT_REQUIRED: _('Reboot required'),
    SoftwareUpdateState.DISABLED: _('Disabled'),
    SoftwareUpdateState.FAULTED: _('Faulted')
}

###

class ActuatorState(Enum):
    UNKNOWN = 0
    HAS_ACTUATORS = 1
    NO_ACTUATORS = 2

    @classmethod
    def _missing_(cls, value):
        return cls.UNKNOWN

actuator_state_str = {
    ActuatorState.UNKNOWN: _('Unknown'),
    ActuatorState.HAS_ACTUATORS: _('Has Actuators'),
    ActuatorState.NO_ACTUATORS: _('No Actuators')
}

###

class DisablementCode(Enum):
    UNKNOWN = 0
    OKAY = 1
    NO_ACTIVE_ACCOUNT = 2
    TOO_FAR_FROM_SERVICE_ADDRESS = 3
    IN_OCEAN = 4
    INVALID_COUNTRY = 5

    @classmethod
    def _missing_(cls, value):
        return cls.UNKNOWN

disablement_code_str = {
    DisablementCode.UNKNOWN: _('Unknown, presumably active'),
    DisablementCode.OKAY: _('Okay'),
    DisablementCode.NO_ACTIVE_ACCOUNT: _('No active account'),
    DisablementCode.TOO_FAR_FROM_SERVICE_ADDRESS: _('Too far from service address'),
    DisablementCode.IN_OCEAN: _('In ocean'),
    DisablementCode.INVALID_COUNTRY: _('Invalid country')
}

###

class OutageCause(Enum):
    UNKNOWN = 0
    BOOTING = 1
    STOWED = 2
    THERMAL_SHUTDOWN = 3
    NO_SCHEDULE = 4
    NO_SATS = 5
    OBSTRUCTED = 6
    NO_DOWNLINK = 7
    NO_PINGS = 8
    ACTUATOR_ACTIVITY = 9
    CABLE_TEST = 10
    SLEEPING = 11
    MOVING_WHILE_NOT_ALLOWED = 12

    @classmethod
    def _missing_(cls, value):
        return cls.UNKNOWN

outage_cause_str = {
    OutageCause.UNKNOWN: _('Unknown'),
    OutageCause.BOOTING: _('Booting'),
    OutageCause.STOWED: _('Stowed'),
    OutageCause.THERMAL_SHUTDOWN: _('Thermal shutdown'),
    OutageCause.NO_SCHEDULE: _('No schedule'),
    OutageCause.NO_SATS: _('No satellites'),
    OutageCause.OBSTRUCTED: _('Obstructed'),
    OutageCause.NO_DOWNLINK: _('No downlink'),
    OutageCause.NO_PINGS: _('No pings'),
    OutageCause.ACTUATOR_ACTIVITY: _('Activity of the actuator'),
    OutageCause.CABLE_TEST: _('Cable test is running'),
    OutageCause.SLEEPING: _('Sleeping'),
    OutageCause.MOVING_WHILE_NOT_ALLOWED: _('Moving while not allowed')
}

###

DISH_KEY = 'dish'
DISH_REACHABLE_KEY = 'reachable'
DISH_CLOUD_ACCESS_KEY = 'cloud'

DEVICE_STOW_REQUESTED_KEY = 'stowRequested'
DEVICE_MOBILITY_CLASS_KEY = 'mobilityClass'
DEVICE_CLASS_OF_SERVICE_KEY = 'classOfService'
DEVICE_SOFTWARE_UPDATE_ST_KEY = 'softwareUpdateState'
DEVICE_IS_SNR_PERSISTENTLY_LOW_KEY = 'isSnrPersistentlyLow'
DEVICE_IS_SNR_ABOVE_NOISE_FLOOR_KEY = 'isSnrAboveNoiseFloor'
DEVICE_BORESIGHT_AZIMUTH_DEG_KEY = 'boresightAzimuthDeg'
DEVICE_BORESIGHT_ELEVATION_DEG_KEY = 'boresightElevationDeg'
DEVICE_DISABLEMENT_CODE_KEY = 'disablementCode'
DEVICE_HAS_ACTUATORS_KEY = 'hasActuators'

DEVICE_ETHER_SPEED_KEY = 'ethSpeedMbps'
NET_POP_PING_DROP_RATE_KEY = 'popPingDropRate'
NET_DOWNLINK_TPUT_BPS_KEY = 'downlinkThroughputBps'
NET_UPLINK_TPUT_BPS_KEY = 'uplinkThroughputBps'
NET_POP_PING_LATENCY_MS_KEY = 'popPingLatencyMs'
NET_SECONDS_TO_FIRST_NON_EMPTY_SLOT_KEY = 'secondsToFirstNonemptySlot'

DEVICE_GPS_STATS_KEY = 'gpsStats'
DEVICE_GPS_STATS_GPS_VALID_KEY = 'gpsValid'
DEVICE_GPS_STATS_GPS_SATS_KEY = 'gpsSats'
DEVICE_GPS_STATS_NO_SATS_AFTER_FFIX = 'noSatsAfterTtff'

DEVICE_ALERTS_MOTORS_STUCK_KEY = 'motorsStuck'
DEVICE_ALERTS_THERMAL_THROTTLE_KEY = 'thermalThrottle'
DEVICE_ALERTS_THERMAL_SHUTDOWN_KEY = 'thermalShutdown'
DEVICE_ALERTS_UNEXPECTED_LOCATION_KEY = 'unexpectedLocation'
DEVICE_ALERTS_SLOW_ETHERNET_SPEED_KEY = 'slowEthernetSpeeds'
DEVICE_ALERTS_ROAMING_KEY = 'roaming'
DEVICE_ALERTS_INSTALL_PENDING_KEY = 'installPending'
DEVICE_ALERTS_IS_HEATING_KEY = 'isHeating'
DEVICE_ALERTS_PS_THERMAL_THROTTLE_KEY = 'powerSupplyThermalThrottle'
DEVICE_ALERTS_POWER_SAVE_IDLE_KEY = 'isPowerSaveIdle'
DEVICE_ALERTS_MOVING_WHILE_NOT_MOBILE_KEY = 'movingWhileNotMobile'
DEVICE_ALERTS_MOVING_FAST_WHILE_NOT_AVIATION_KEY = 'movingFastWhileNotAviation'

DEVICE_READY_STATES_KEY = 'readyStates'
DEVICE_READY_STATES_CADY_KEY = 'cady'
DEVICE_READY_STATES_SCP_KEY = 'scp'
DEVICE_READY_STATES_L1L2_KEY = 'l1l2'
DEVICE_READY_STATES_XPHY_KEY = 'xphy'
DEVICE_READY_STATES_AAP_KEY = 'aap'
DEVICE_READY_STATES_RF_KEY = 'rf'

DEVICE_OUTAGE_KEY = 'outage'
DEVICE_OUTAGE_CAUSE_KEY = 'cause'
DEVICE_OUTAGE_START_TIMESTAMP_NS_KEY = 'startTimestampNs'
DEVICE_OUTAGE_DURATION_NS_KEY = 'durationNs'
DEVICE_OUTAGE_DID_SWITCH_KEY = 'didSwitch'

DEVICE_OBSTRUCTION_STATS_KEY = 'obstructionStats'
DEVICE_OBSTRUCTION_STATS_CURRENTLY_OBSTRUCTED_KEY = 'currentlyObstructed'
DEVICE_OBSTRUCTION_STATS_FRACTION_OBSTRUCTED_KEY = 'fractionObstructed'
DEVICE_OBSTRUCTION_STATS_TIME_OBSTRUCTED_KEY = 'timeObstructed'
DEVICE_OBSTRUCTION_STATS_VALID_SEC_KEY = 'validS'
DEVICE_OBSTRUCTION_STATS_WEDGE_FRAC_OBSTRUCTED_LIST_KEY = 'wedgeFractionObstructedList'
DEVICE_OBSTRUCTION_STATS_WEDGE_ABS_OBSTRUCTED_LIST_KEY = 'wedgeAbsFractionObstructedList'
DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_DURATION_SEC_KEY = 'avgProlongedObstructionDurationS'
DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_INTERVAL_SEC_KEY = 'avgProlongedObstructionIntervalS'
DEVICE_OBSTRUCTION_STATS_AVG_PROLONGED_OBSTR_VALID = 'avgProlongedObstructionValid'

