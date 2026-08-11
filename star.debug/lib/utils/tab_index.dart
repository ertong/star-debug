int validLivePageIndex(int selectedIndex, int pageCount) {
  if (pageCount <= 0 || selectedIndex < 0) return 0;
  if (selectedIndex >= pageCount) return pageCount - 1;
  return selectedIndex;
}
