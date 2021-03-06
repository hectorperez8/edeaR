% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/resource_frequency.R
\name{resource_frequency}
\alias{resource_frequency}
\alias{resource_frequency.eventlog}
\alias{resource_frequency.grouped_eventlog}
\title{Metric: Resource frequency}
\usage{
resource_frequency(eventlog, level, append, ...)

\method{resource_frequency}{eventlog}(eventlog, level = c("log", "case",
  "activity", "resource", "resource-activity"), append = F,
  append_column = NULL, ...)

\method{resource_frequency}{grouped_eventlog}(eventlog, level = c("log",
  "case", "activity", "resource", "resource-activity"), append = F,
  append_column = NULL, ...)
}
\arguments{
\item{eventlog}{The dataset to be used. Should be a (grouped) eventlog object.
\code{eventlog}.}

\item{level}{Level of granularity for the analysis: log,  case, activity, resource or resource-activity.
For more information, see \code{vignette("metrics", "edeaR")}}

\item{append}{Logical, indicating whether to append results to original event log. Ignored when level is log or trace.}

\item{...}{Deprecated arguments}

\item{append_column}{Which of the output columns to append to log, if append = T. Default column depends on chosen level.}
}
\description{
Analyses the frequency of resources at different levels of analysis
}
\details{
Comparable to the concept of the activity frequency the frequency of resources in a business process can
also be very insightful for companies, e.g., during company restructuring.

\itemize{
\item On the level of the complete event log, summary statistics show the number of times
a resource executes an activity in the complete event log.

\item To get a better view on the variance between the different cases,
the summary statistics of the frequency of resources can be
calculated on the level of the cases. This way, a company gets an insight in the
number of different resources working on each case together with the number
of activities a resource executes per case.

\item At the level of the different activities, the
resource frequency states how many different resources are executing a specific
activity in the complete event log.

\item At the level of the distinct resources in
the event log, this metric simply shows the absolute and relative frequency of
occurrences of each resource in the complete event log.

\item Finally, at the most specific level of analysis, the absolute and relative number of times each resource-activity
level occurs in the complete event log can be calculated. Two different relative
numbers are provided here, one from the resource perspective and one from
the activity perspective. At the resource perspective, the denominator is the
total number of executions by the resource under consideration. At the activity
perspective, the denominator is the total number of occurrences of the activity
under consideration.
}
}
\section{Methods (by class)}{
\itemize{
\item \code{eventlog}: Resource frequency for eventlog

\item \code{grouped_eventlog}: Resource frequency for grouped eventlog
}}

\references{
Swennen, M. (2018). Using Event Log Knowledge to Support Operational Exellence Techniques (Doctoral dissertation). Hasselt University.
}
