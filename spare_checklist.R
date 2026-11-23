ai_checklist <- list(
  title = "Checklist for Equitable Data Selection for Women's Healthcare",
  intro = "This checklist outlines the key characteristics and considerations a dataset should include or consider to more accurately represent women in these datasets.
  Work through each section, consider each section in relation to your project, some elements may be more relevant than others. 
  Click the status circle on the left to cycle between not started,considered, irrelevant, and revisit later. Click the info icon for more detail. When you are finished you can download your responses as a csv.",
  sections = list(
    list(section = "Necessities", items = list(
      list(id = "p1", tip = "Contain both male and female patients(if condition being studied affects both)",
           info = "You may wish to compare women's data vs men's data, as they can have different symptoms, treatment options and difference in prevalence of condition."),
      list(id = "p2", tip = "Contains a range of participant ages",
           info = "Women can have different treatment plans/differential diagnosis based on their age."),
      list(id = "p3", tip = "	Is it a recent dataset or could recent advancements in the condition being studied limit how old the dataset can be",
           info = "Women's health has progressed in the last number of years both in treatment options and knowledge of how symptoms present in women and men.
         Consider how old your dataset can be given recent advancements. 
         Also consider that this checklist was developed based on opinions of clinicians in 2023, there may be additional timerelated elements to consider."),
      list(id = "p4", tip = "Where was the data gathered? ",
           info = "This checklist is based off European clinicians perspectives, there may be country and government specific elements to consider.")
    )),
    list(section = "Domain Knowledge - i.e. knowledge of the area being studied", items = list(
      list(id = "d1", tip = "Is there known gender or sex differences in the studied condition(s) ",
           info = "There are conditions where women and men have different treatment options, different side effects to medication, different symptoms.
         "),
      list(id = "d2", tip = "Is there a lot of background knowledge needed to understand the data",
           info = "Ensure all columns are understood and how they interact with each other."),
      list(id = "d3", tip = "Is there additional resources to bridge the data science to medical science gap",
           info = "Some datasets can be difficult to interpret, well documented datasets, domain experts who eork in the area are a great resource"),
      list(id = "d4", tip = "Is there domain experts to call upon who know the data",
           info = "A 'Domain expert' is anyone who knows the medical intricacys of the researched condition.
         They can help with unclear results and explain condition in dept for example: doctors, biomedical scientist, clinical nurse specialists")
    )),
    list(section = "Sex Specific Factors", items = list(
      list(id = "m1", tip = "Are women specific stages such as menstruation and menopause included",
           info = "Menstruation and menopause can impact chronic diseases. 
         Changes in menstruation can indicate underlying health conditions. 
         Similarly 'menstuation conditions' such as Endometriosis, PCOS/PMOS can increase the likelihood chronic condtions such as heart disease and diabetes "),
      list(id = "m2", tip = "Is pregnancy status known",
           info = "Pregnancy or plans to become pregnant can impact the type of medication women with chronic diseases can use."),
      list(id = "m3", tip = "Is history of pregnancy complications known",
           info = "Events that happen during pregnancy such as 'preaclamsia' or 'gestational diabeties' can be indicators of a patients health in the future."),
      list(id = "m4", tip = "Does it include transgendered patients",
           info = "Be aware if there are trans patients in your dataset, e.g. trans men may still need gynacology services."),
      list(id = "m5", tip = "Are there conditions that affect more women/men present in the dataset",
           info = "There are conditions that affect more women then men (and vice versa) this may impact the representation in your datases.  
         Consider what an equitable split may look like.")
    )),
    list(section = "Clinician Information", items = list(
      list(id = "e1", tip = "Is the sex of the clinician known",
           info = "The sex of the clinician may impact the care women recieve."),
      list(id = "e2", tip = "Is the specialisation of the clinician known",
           info = "The specialisation of the clinician may impact the type of treatment the patient has access to.")
    )),
    list(section = "Patient Specific Factors	", items = list(
      list(id = "s1", tip = "Is there a need to consider comorbidities",
           info = "Comorbidities are more common in women and can impact treatment plans."),
      list(id = "s2", tip = "Are pain scales present/necessary",
           info = "Women tend to report lower pain levels in comparison to men. Consider this if 
         painscales are in your data and indeed if they are necessary for your model."),
      list(id = "s3", tip = "Is ethnicity known",
           info = "Different ethnicities have different risk factors for various conditions."),
      list(id = "s4", tip = "Are cultural factors known ",
           info = "A womans culture may impact their wants/needs in medication and treatment plans, e.g. some cultures are 
         not comfortable stoping periods completely or being on a form of birth control.
         This limits the options patient has."),
      list(id = "s5", tip = "Is the location known(of the patients home)",
           info = "The patients loction impacts their access to services. Location can be a proxcy variable e.g. for socioeconomic status"),
      list(id = "s6", tip = "Are there personal patient factors e.g. carer responsibilities, history of abuse",
           info = "Carer responsibilities and abuse can reduce a patients ability to be seen medically and therefor these 
         patients may not be represented in your data. Models aiming to schedule patients appointments should be partularly mindful of this.
         Social pressures may impact the types of treatment a patient can access."),
      list(id = "s7", tip = "Are there treatment plans/medication known.",
           info = "Treatment plans and medication can vary based on sex and gender."),
      list(id = "s8", tip = "Is the length of diagnosis known",
           info = "Women on average take longer to get a diagnosis then men, be aware of this if you plan on considering diagnostic length.
         If your data was collected during a set time frame there may be women in your data who were diagnosed after the data collection period,
         or they may be removed since they didn't have the diagnosis yet.")
    ))
  )
)

cds_checklist <- list(
  title = "Things to consider when building Clinical Decision Support (CDS) models for women",
  intro = "Work through each section. ",
  # Set to NULL to remove this block entirely, or edit the text/diagram below.
  extra_content = tagList(
    div(class = "writeup-block",
        h4("Our understanding of the diagnostic process for women"),
        p("We gave clinicians a medical sernario and asked them to diagnose the patient across 4 scenarios young female patient, 
          painful periods (as an additional symptom), older female patient and a male patient. The symptom profile with common pain points in womens health. Full paper link when avalible ",
          "We then analysed the results and derived the diagnostic journey and how that could impact the design of CDS models at the end there is a checklist you can work through
          click the status circle to cycle between not started, considered, irrelevant, and revisit later. Click the info icon for more detail."),
        p("The diagnostic process often starts with a patient based narriative (the patients perspective as to why they are there). This leads to two key phases a clinicians cycles through in order to diagnose the patient
          Hypothesising and Information Gathering. In the 'Information Gathering' stage a clinician could: order bloods and scans, take different types of histories (such as family history, symptom history and menstrual history), conduct physical exams and ask questions. 
          They consider all the information they have and either diagnose a patient or go back to hypothesising what could be wrong. The key part of the 'Information Gathering' stage is not all information is considered at once, blood tests and scans for example can take a while to be reported back,
          while history taking, physical exams are more immediate. Similarly an interesting blood result may lead to futher questioning.
          The 'Hypothesising' stage focuses on trying to think of what conditions the patient could have, it tries to rule out red flag issues(i.e. very dangerous/life-threatening conditions), they consider the need to refer patients to other clinicians and the consider how conditions and symptoms interconnect
          Once clinicians consider all this information, this directly informs the 'Information Gathering' stage. Often these stages are looped through until a diagnosis is made. This is represented by our 'Diagnostic Journey' diagram.")
    ),
    div(class = "diagram-block",
        h5("Diagnostic journey"),
        HTML(diagnostic_diagram_svg),
        p(class = "diagram-caption",
          "Diagram of the diagnostic process among clinicians when diagnosing women")
    ),
    hr()
  ),
  
  sections = list(
    list(section = "Expanding what counts as model relevant data", items = list(
      list(id = "c1", tip = "Consider patient based narriatives",
           info = "Patient based narriatives is the patient telling you in their own words what has been going on medically.
           Patient based narriatives guide the type of tests being ordered, the type of questions being asked and types of conditions that are initially considered.
           Consider how these narriatives would be represented in a CDS model that works alongside clinicians, does the cliniciand record them as a list of symptoms? 
           How is the impact on the patients lives recorded? "),
      list(id = "c2", tip = "Temporal and hierarchical symptom representation",
           info = "Clinicians consider the symptoms but also the order in which they appeared, 
           clinicians will identify symptoms which are primary (the symptoms that come first) and secondary (the symptoms that are a result of the primary symptoms).
           e.g. a patient may have chronic abdominal pain and depression, depression in this case is a result of chronic pain."),
      list(id = "c3", tip = "Menstrual and reproductive histories",
           info = "Menstrual and reproductive histories are essential for diagnosing women in the diagnostic process.
           Many conditions utilise mensturation/reproduction histories to come to a diagnosis for both 'gynocological conditions' e.g. endometriosis and PCOS/PMOS
           and chronic conditions such as thyroid disorders, diabetes and inflammatory bowel disease."),
      list(id = "c4", tip = "Representation of Physical exam findings",
           info = "If the clinician preforms a phycial exam on the patient how is this recorded by your CDS model.")
    )),
    list(section = "Linear Pipeline CDS", items = list(
      list(id = "cd1", tip = "Design so information can be added over time",
           info = "Clinicians hypothesise and refine their diagnoses over time, 
           if a CDS aims to be used alongside clinicians it needs to consider new information as it unfolds throughout the diagnostic process."),
      list(id = "cd2", tip = "Consider women may be dismissed and your CDS system may have less information to work with in comparrison to male patients",
           info = "Many women report being dismissed when recieving medical care meaning your system could have less inputs incomparison to male patients, 
           consider adding interventions such as digital nudges and interactive prompting in CDS models so more indept information can be added
           even if the patient is being dissmissed."),
      list(id = "cd3", tip = "Support hypothesising and information gathering stages",
           info = "Clinicians utilise hypothesising and information gathering to diagnose patients. 
           CDS's which aim to help these stages actively take part in the diagnositc process. 
           Recommending not only possible diagnoses, but best next steps, questions to ask the patient, tests"),
      list(id = "cd4", tip = "Clinicians education and support",
           info = "Ensure clinicians can actively engage and understand CDS models and how best to interact.")
    )),
    list(section = "Single disease diagnostic support models", items = list(
      list(id = "v1", tip = "Consider making multi-disease diagnostic support models as opposed to single disease diagnostic support models",
           info = "While there is literature supporting multi-disease diagnostic support models over single disease models, women tend to have more 
           'non-specific' symptoms i.e. symptoms that can be a result of many conditions. 
           While single disease diagnostic models have their place they do not represent the interconnection of diseases which is a key element in diagnosing women.
           CDS models which recognise this better reflect the realities of diagnosing women")
    ))
  )
)

# =========================================================================
# TRI-STATE LOGIC (shared)
# =========================================================================
state_levels <- c("Not started", "Considered", "Irrelevant", "Revisit later")
state_icon   <- c("Not started" = "square", "Considered" = "circle-check",
                  "Irrelevant" = "circle-minus", "Revisit later" = "flag")
state_class  <- c("Not started" = "btn-outline-secondary", "Considered" = "btn-success",
                  "Irrelevant" = "btn-outline-secondary", "Revisit later" = "btn-warning")

# =========================================================================
# MODULE — one checklist page. Reused for both AI and CDS checklists so
# there's no ID collision between pages.
# =========================================================================
checklistUI <- function(id, checklist) {
  ns <- NS(id)
  all_items <- unlist(lapply(checklist$sections, `[[`, "items"), recursive = FALSE)
  
  tagList(
    h3(checklist$title),
    p(class = "text-muted", checklist$intro),
    if (!is.null(checklist$extra_content)) checklist$extra_content,
    div(style = "margin: 1rem 0 1.5rem;",
        strong("Overall progress: "), textOutput(ns("overall_pct"), inline = TRUE), "%",
        div(style = "height:6px; background:#eee; border-radius:3px; margin-top:4px;",
            uiOutput(ns("overall_bar")))
    ),
    do.call(accordion, c(
      id = ns("sections"),
      lapply(checklist$sections, function(sec) {
        accordion_panel(
          title = sec$section,
          value = sec$section,
          lapply(sec$items, function(item) uiOutput(ns(paste0("row_", item$id))))
        )
      })
    )),
    hr(),
    downloadButton(ns("download_results"), "Download results as CSV", class = "btn-outline-primary")
  )
}

checklistServer <- function(id, checklist) {
  moduleServer(id, function(input, output, session) {
    all_items <- unlist(lapply(checklist$sections, `[[`, "items"), recursive = FALSE)
    names(all_items) <- sapply(all_items, `[[`, "id")
    
    status    <- reactiveValues()
    info_open <- reactiveValues()
    for (iid in names(all_items)) { status[[iid]] <- "Not started"; info_open[[iid]] <- FALSE }
    
    lapply(names(all_items), function(iid) {
      observeEvent(input[[paste0("state_", iid)]], {
        cur <- status[[iid]]
        status[[iid]] <- state_levels[(match(cur, state_levels) %% length(state_levels)) + 1]
      }, ignoreInit = TRUE)
      
      observeEvent(input[[paste0("info_", iid)]], {
        info_open[[iid]] <- !info_open[[iid]]
      }, ignoreInit = TRUE)
      
      output[[paste0("row_", iid)]] <- renderUI({
        item <- all_items[[iid]]
        st   <- status[[iid]]
        div(class = "item-row",
            fluidRow(
              column(1, actionButton(session$ns(paste0("state_", iid)), label = NULL,
                                     icon = icon(state_icon[[st]]),
                                     class = paste("status-btn", state_class[[st]]))),
              column(10, span(class = if (st == "Irrelevant") "irrelevant" else "", item$tip)),
              column(1, actionButton(session$ns(paste0("info_", iid)), label = NULL,
                                     icon = icon("info-circle"), class = "info-btn"))
            ),
            if (isTRUE(info_open[[iid]])) div(class = "info-box", item$info)
        )
      })
    })
    
    n_done <- reactive(sum(sapply(names(all_items), function(iid) status[[iid]] != "Not started")))
    
    output$overall_pct <- renderText(round(100 * n_done() / length(all_items)))
    
    output$overall_bar <- renderUI({
      pct <- round(100 * n_done() / length(all_items))
      div(style = sprintf("height:100%%; width:%d%%; background:#3C3489; border-radius:3px; transition:width .2s;", pct))
    })
    
    output$download_results <- downloadHandler(
      filename = function() paste0(gsub("[^A-Za-z0-9]+", "_", checklist$title), "_", Sys.Date(), ".csv"),
      content = function(file) {
        rows <- do.call(rbind, lapply(checklist$sections, function(sec) {
          do.call(rbind, lapply(sec$items, function(item) {
            data.frame(section = sec$section, tip = item$tip,
                       status = status[[item$id]], stringsAsFactors = FALSE)
          }))
        }))
        write.csv(rows, file, row.names = FALSE)
      }
    )
  })
}

# =========================================================================
# APP — one page per checklist, navigable via the top nav bar
# =========================================================================
ui <- page_navbar(
  title = "Decision support checklists",
  theme = bs_theme(version = 5, primary = "#3C3489", base_font = font_google("Inter")),
  header = tags$head(tags$style(HTML("
    .item-row { padding: 10px 0; border-top: 1px solid #eee; }
    .item-row:first-of-type { border-top: none; }
    .status-btn { border-radius: 50%; width: 34px; height: 34px; padding: 0; }
    .info-btn { border: none; background: transparent; color: #999; }
    .irrelevant { color: #999; text-decoration: line-through; }
    .info-box { font-size: 0.85rem; color: #555; margin: 6px 0 0 44px; }

    .writeup-block { max-width: 760px; margin: 1rem 0 1.75rem; line-height: 1.6; }
    .writeup-block p { color: #333; }

    .diagram-block { margin: 0 0 1.75rem; }
    .diagram-block h5 { margin-bottom: 0.75rem; color: #444; }
    .diagram-caption { font-size: 0.85rem; color: #777; max-width: 700px; margin: 0.75rem auto 0; text-align: center; }
  "))),
  nav_panel("Checklist for Equitable Data Selection for Women's Healthcare", checklistUI("ai", ai_checklist)),
  nav_panel("Understanding Diagnosing Women for Clinical Decision Support Models", checklistUI("cds", cds_checklist))
)