---
author: joshbax-msft
title: Print Driver Rendering Test (pgremlin)
description: Print Driver Rendering Test (pgremlin)
MSHAttr:
- 'PreferredSiteName:MSDN'
- 'PreferredLib:/library/windows/hardware'
ms.assetid: 10ea2feb-77ff-4ad6-9eac-aa22a79d503b
---

# Print Driver Rendering Test (pgremlin)


This automated test measures device driver interface (DDI) calls that a driver can make. This test produces numerous pages of output that has shapes, gradient fills, and alpha blends. This test also prints and tests some complex fonts.

## Test details


<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td><p><strong>Associated requirements</strong></p></td>
<td><p>Device.Imaging.Printer.Base.rendering</p>
<p>[See the device hardware requirements.](http://go.microsoft.com/fwlink/p/?linkid=254483)</p></td>
</tr>
<tr class="even">
<td><p><strong>Platforms</strong></p></td>
<td><p>Windows 7 (x64) Windows 7 (x86) Windows 8 (x64) Windows 8 (x86) Windows Server 2012 (x64) Windows Server 2008 R2 (x64) Windows 8.1 x64 Windows 8.1 x86 Windows Server 2012 R2</p></td>
</tr>
<tr class="odd">
<td><p><strong>Expected run time</strong></p></td>
<td><p>~10 minutes</p></td>
</tr>
<tr class="even">
<td><p><strong>Categories</strong></p></td>
<td><p>Certification Functional</p></td>
</tr>
<tr class="odd">
<td><p><strong>Type</strong></p></td>
<td><p>Automated</p></td>
</tr>
</tbody>
</table>

 

## Running the test


Before you run the test, complete the test setup as described in the test requirements: [Printer Testing Prerequisites](printer-testing-prerequisites.md).

## Troubleshooting


For troubleshooting information, see [Troubleshooting Device.Imaging Testing](troubleshooting-deviceimaging-testing.md).

This test fails if any of the following problems occur:

-   The test does not produce output.

-   The debugger breaks in.

-   The test produces incorrect output.

-   The log file indicates a failure.

## More information


Pgremlin tests the possible DDI calls that a driver can make. The test uses .emf files that are printed out on the device. The test can find output problems that a particular driver or device might have when the device performs a specific DDI call.

The test prints three pages of circular font wheels. The first page contains three font wheels followed by two Korean string lines. The second page contains two font wheels. The third page contains three font wheels. The font wheels are in the font and size that are indicated above the wheel. The wheels are uniform, with all lines of same size and weight. All three pages of font wheels are printed for each font download type. Each of the EMF files prints a title bar that contains the full path to the file printed. This title bar is on the top left corner of the page.

The test prints one page that contains gradient fill bars. The top of the page has seven horizontal gradient fill bars. Output starts at full density and lightens gradually to the right, following the pattern that appears just above the bar. The middle of the page has two triangular gradient fills. The fill on the left starts in the middle and fills outward to a black edge. The fill on the right starts on the outside and fills to a black center. At the bottom of the page, there are seven vertical gradient fills. The darkest part of the fill is at the top, with gradual progression to lighter at the bottom.

The following list describes additional test files:

-   ALPBLD00.emf: This test prints six columns of two rectangles. In each column, the two rectangles are connected by a single gray rectangle in the background that runs the entire length of the column. The first column (left) is solid gray rectangles. The remaining five columns use various patterns to fill from red inside, to solid gray on the outside.

-   ALPBLD09.emf: This test prints six columns of two rectangles. In each column, the two rectangles are connected by a single gray rectangle in the background that runs the entire length of the column. The first column (left) is solid black rectangles with a small white rectangle in the middle. The remaining five columns start with a white square on the inside with colored rectangles progressing outward from lighter colors to black on the outside.

-   Binrop00.emf: This test prints two boxes side by side. The boxes consist of a black rectangle left side, gray rectangle right side, and various hatch pattern rectangles as connecting crossbeams inside the box.

-   Bitblt13.emf: This test prints six columns of two rectangles. In each column, the two rectangles are connected by a column (left) and solid black rectangles. The remaining five columns use various patterns to fill from green inside, to solid black on the outside, with an overlaying hatch pattern.

-   Brush15.emf: This test prints six columns of two rectangles. In each column, the two rectangles are connected by a single gray rectangle in the background that runs the entire length of the column. Each of the rectangles has a pair of solid black lines that run down the approximate middle of the rectangle. The rest of the rectangle is filled with a multicolored checkerboard pattern.

-   Excel\_j1.emf: This test prints out a pie chart in Japanese with two circular pie charts on a gradient background at the bottom. The Japanese language is used in part of the page. The first line of the chart is in English and says "Excel 2000 JP20\_LET.xls".

-   Mskblt15.emf: This test prints six columns of two rectangles. In each column, the two rectangles are connected by a single gray rectangle in the background that runs the entire length of the column. The first column (left) is solid black rectangles with a white star in the middle. The remaining five columns have a white star in the middle with a hatch pattern on half the inside, and the rest of the rectangle is a gradual gradient fill from gray on the inside to solid black on the outside.

-   Path02.emf: This test prints nine gray vertical rectangles in the background. In the foreground left is reverse-fill varying sizes of Arial normal font. On the right foreground is normal fill varying sizes of Arial normal font.

-   Pen09.emf: This test prints two sections of three vertical gray rectangles. The left and right sections have dotted line drawings that are symmetrical and appear to create a four-point star if they met in the middle.

-   Plgblt00.emf: This test prints six columns of two diamonds with a small rectangle in the middle. In each column, the three objects are connected by a single gray rectangle in the background that runs the entire length of the column. The first column (left) is solid black diamonds and a rectangle. The remaining five columns start with red in the center and gradient fill outward to a solid black edge.

-   Region00.emf: This test prints four columns of three objects. The first object is a star, the second object is a circle, and the third object is a square. In each column, the three objects are connected by a single gray rectangle in the background that runs the entire length of the column. In the first and the forth column, all the objects are solid hatch-filled objects (although the star has a pentagon-shaped hole in the middle.) In the second column, all three objects are a hatched outline of the object. In the third column, the objects are solid black, but they are behind the gray rectangle that runs the length of the column.

-   Sbmode04.emf: This test prints three rows of four squares. Each of the squares has a coordinate "(0,0)" printed in the upper left corner. Each square starts with white in the center and fills outward to black on the edge.

-   Setdib01.emf: This test is the same as Alpbld09.emf, except that the first column is a black rectangle that has a dark red smaller rectangle inside it. A smaller black rectangle is inside the dark red rectangle.

-   Strblt03.emf: This test prints six columns of two rectangles. In each column, the two rectangles are connected by a single gray rectangle in the background that runs the entire length of the column. The first column (left) is only the gray background rectangle. All following rectangles in the columns are transparent, which affects how they look when they overlap the background gray rectangle. The second column has solid gray rectangles, with a smaller gray rectangle inside it.

-   Strblt13.emf: This test prints two sets of mirrored rectangles. The top four rectangles consist of two multicolored rectangles that have coordinate pairs in the center of the screen "(0,0)". These pairs are mirrored into two top rectangles of the same design. The bottom set of four rectangles follows the same pattern.

-   Strdi03i.emf: This is the same as Strblt03.emf, except that there is color in the third column.

-   TRNBLT09.emf: This test prints six columns of two rectangles. In each column, the two rectangles are connected by a single gray rectangle in the background that runs the entire length of the column. The first column (left) is solid black rectangles with a small white rectangle in the middle. The remaining five columns start with a white square on the inside and have colored rectangles progressing outward from lighter colors to black on the outside.

 

 






