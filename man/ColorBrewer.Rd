\name{RColorBrewer}
\alias{brewer.pal}
\alias{display.brewer.pal}
\alias{display.brewer.all}
\alias{brewer.pal.info}
\alias{brewer}
\alias{colors}
\alias{ColorBrewer}
\alias{RColorBrewer}
\alias{brewer.all}
\title{ColorBrewer palettes}
\description{Creates nice looking color palettes especially for thematic maps}
\usage{brewer.pal(n, name)
display.brewer.pal(n, name)
display.brewer.all(n=NULL, type="all", select=NULL, exact.n=TRUE, 
colorblindFriendly=FALSE)
brewer.pal.info
}
\arguments{
\item{n}{Number of different colors in the palette, minimum 3, 
maximum depending on palette}
\item{name}{A palette name from the lists below}
\item{type}{One of the string "div", "qual", "seq", or "all" }
\item{select}{A list of names of existing palettes}
\item{exact.n}{If TRUE, only display palettes with a color number given by n}
\item{colorblindFriendly}{if TRUE, display only colorblind friendly palettes}
}

\details{
\code{brewer.pal} makes the color palettes from ColorBrewer
available as R palettes.

\code{display.brewer.pal()} displays the selected palette in a graphics window.

\code{display.brewer.all()} displays the a few palettes simultanueously in a graphics window.

\code{brewer.pal.info} returns information about the available palettes as a dataframe.
\code{brewer.pal.info} is not a function, it is a variable. This might change in the future.


For details and an interactive palette selection tools see http://colorbrewer.org.
It is free to use, although ColorBrewer's designers would appreciate it if you could cite the ColorBrewer project 
if you decide to use one of our color schemes.


There are 3 types of palettes, sequential, diverging, and qualitative.\cr
\cr
1. Sequential palettes are suited to ordered data that progress from low to high. 
Lightness steps dominate the look of these schemes, with light colors for low data values 
to dark colors for high data values. 
\cr
2. Diverging palettes put equal emphasis on mid-range critical values and extremes at both ends 
of the data range. The critical class or break in the middle of the legend is emphasized 
with light colors and low and high extremes are emphasized with dark colors that have 
contrasting hues. 
\cr
3. Qualitative palettes do not imply magnitude differences between legend classes, 
and hues are used to create the primary visual differences between classes. 
Qualitative schemes are best suited to representing nominal or categorical data.

The sequential palettes names are
\cr
Blues
BuGn
BuPu
GnBu
Greens
Greys
Oranges
OrRd
PuBu
PuBuGn     
PuRd
Purples
RdPu
Reds
YlGn
YlGnBu
YlOrBr
YlOrRd

All the sequential palettes are available in variations from 3 different values up to 9 different values.

The diverging palettes are \cr
BrBG
PiYG
PRGn
PuOr
RdBu
RdGy
RdYlBu
RdYlGn
Spectral

All the diverging palettes are available in variations from 3 different values up to 11 different values.

For qualitative palettes, the lowest number of distinct values available always is 3, but the largest number
is different for different palettes. It is given together with the palette names in the following table.
\tabular{lr}{
Accent  \tab  8    \cr
Dark2   \tab  8    \cr
Paired  \tab  12   \cr
Pastel1 \tab  9    \cr
Pastel2 \tab  8    \cr
Set1    \tab  9    \cr
Set2    \tab  8    \cr
Set3    \tab  12   
}




ColorBrewer is
Copyright (c) 2002 Cynthia Brewer, Mark Harrower, and The Pennsylvania State University. 
All rights reserved.
\cr
The ColorBrewer palettes have been included in this R package with permission of the copyright holder.
\cr
For license details see the file \code{COPYING} included in this package.


}


\examples{
## create a sequential palette for usage and show colors
mypalette<-brewer.pal(7,"Greens")
image(1:7,1,as.matrix(1:7),col=mypalette,xlab="Greens (sequential)",
       ylab="",xaxt="n",yaxt="n",bty="n")
## display a divergent palette
display.brewer.pal(7,"BrBG")
devAskNewPage(ask=TRUE)
## display a qualitative palette
display.brewer.pal(7,"Accent")
devAskNewPage(ask=TRUE)
## display a palettes simultanoeusly
display.brewer.all(n=10, exact.n=FALSE)
devAskNewPage(ask=TRUE)
display.brewer.all(n=10)
devAskNewPage(ask=TRUE)
display.brewer.all()
devAskNewPage(ask=TRUE)
display.brewer.all(type="div")
devAskNewPage(ask=TRUE)
display.brewer.all(type="seq")
devAskNewPage(ask=TRUE)
display.brewer.all(type="qual") 
devAskNewPage(ask=TRUE)
display.brewer.all(n=5,type="div",exact.n=TRUE)
devAskNewPage(ask=TRUE)
display.brewer.all(colorblindFriendly=TRUE)
devAskNewPage(ask=TRUE)
brewer.pal.info
brewer.pal.info["Blues",]
brewer.pal.info["Blues",]$maxcolors
}

\value{A palette
\cr
You will get an error when you ask for a nonexisting palette,
and you will get a warning if a palette you asked for exists
but not with as many different leves as you asked for. 
}


\author{Erich Neuwirth, University of Vienna,
\email{erich.neuwirth@univie.ac.at}, with contributions by
John Maindonald, Australian National University,
\email{john.maindonald@anu.edu.au}
}
\keyword{color}

\note{More information on ColorBrewer is available at its Website, 
\url{http://www.colorbrewer.org}.

}
