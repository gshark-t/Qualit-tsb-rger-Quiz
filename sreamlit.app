import streamlit as st







rollen = {
    0: "echte*r Qualitätssicherer",
    1: "gewöhnliche*r Schüler*in",
    2: "Systemsprenger",
    3: "echte*r Qualitätsbürger*in",
    4: "sprachlichlich extremistische Person",
    5: "Konsumopfer",
    6: "NPC"
}

# CSS einfügen
st.markdown(
    """
    <style>
    body {
        background-color: #403A3A;
        color: white;
    }
    div.stButton > button {
        background-color: black;
        color:#FFD700;
        border-radius: 10px;
    }
    </style>
    """,
    unsafe_allow_html=True
)

st.title("Solltest du nach Qualityland reisen?")

punkte = 0

if "frage_index" not in st.session_state:
    st.session_state["frage_index"]= 0

if "punkte" not in st.session_state:
    st.session_state["punkte"] = 0

punkte = int(st.session_state["punkte"])
level = punkte // 5

if st.session_state["frage_index"] ==0:   
    st.write("Würdest du für dein Land kämpfen, wenn du bequem von Zuhause einen Kampfroboter in einem Kriegsgebiet steuern könntest? Wie ein echter EgoShuter!")
    
    col1, col2 =st.columns(2)

    with col1:
        if st.button("Ja", key="antwort1_ja"):
            st.session_state.punkte += 50
            st.session_state["antwort1"] = "Ja"
            st.session_state["frage_index"] += 1

    with col2:
        if st.button("Nein", key="antwort1_nein"):    
            st.session_state.punkte += 0
            st.session_state["antwort1"] = "Nein"
            st.session_state["frage_index"] += 1

elif st.session_state["frage_index"] == 1:
    st.write("Redest du gerne oder viel mit einer KI über Probleme die dich emotional belasten?")
    
    col1, col2 =st.columns(2)

    with col1:
        if st.button("Ja", key="antwort2_ja"):
           st.session_state.punkte += 20
           st.session_state["antwort2"] = "Ja"
           st.session_state["frage_index"] += 1
    
    with col2:
        if st.button("Nein", key="antwort2_nein"):
           st.session_state.punkte += 0
           st.session_state["antwort2"] = "Nein"
           st.session_state["frage_index"] += 1

elif st.session_state["frage_index"] == 2:
    st.write("Fühlst du dich durch rundum Überwachung vor Straftaten sicherer?")
    
    col1, col2 = st.columns(2)

    with col1:
        if st.button("Ja", key="antwort3_ja"):
            st.session_state.punkte += 100
            st.session_state["antwort3"] = "Ja"
            st.session_state["frage_index"] += 1
        
    with col2:
        if st.button("Nein", key="antwort3_nein"):
            st.session_state.punkte += 0
            st.session_state["antwort3"] = "Nein"
            st.session_state["frage_index"] += 1

elif st.session_state["frage_index"] == 3:
    st.write("Bist du grundsätzlich offen dafür einen Android zum Staatsoberhaupt zu wählen?")
      
    col1, col2 =st.columns(2)

    with col1:
        if st.button("Ja", key="antwort4_ja"):
            st.session_state.punkte +=10
            st.session_state["antwort4"] = "Ja"
            st.session_state["frage_index"] +=1
    
    with col2:
        if st.button("Nein", key="antwort4_nein"):
            st.session_state.punkte += 5
            st.session_state["antwort4"] = "Nein"
            st.session_state["frage_index"] += 1

elif st.session_state["frage_index"] == 4:
    st.write("Wärst du dafür das jeder immer als Nachname den Beruf des gleichgeschlechtlichen Elternteils zum Zeitpunkt des Zeugungsaktes annimmt?")
       
    col1, col2 = st.columns(2)
    
    with col1:
        if st.button("Ja", key="antwort5_ja"):
            st.session_state.punkte += 100
            st.session_state["antwort5"] = "Ja"
            st.session_state["frage_index"] += 1
    
    with col2:
        if st.button("Nein", key="antwort5_nein"):
            st.session_state.punkte +=0
            st.session_state["antwort5"] = "Nein"
            st.session_state["frage_index"] += 1

elif st.session_state["frage_index"] == 5:
        st.write("Wie wäre es mit einem PDF? Deinem Persönlichen Digitalen Freund, der immer für dich Zeit hat, immer deiner Meinung ist und immer auf deiner Seite ist. Viel besser als ein MF, menschlicher Freund!")
        
        col1, col2 = st.columns(2)
        
        with col1:
            if st.button("Ja", key="antwort6_ja"):
                st.session_state.punkte += 400
                st.session_state["antwort6"] = "Ja"
                st.session_state["frage_index"] += 1
        
        with col2:
            if st.button("Nein", key="antwort6_nein"):
                st.session_state.punkte += 0
                st.session_state["antwort6"] = "Nein"
                st.session_state["frage_index"] += 1

elif st.session_state["frage_index"] == 6:
        st.write("Hast du es satt Entscheidungen zu treffen? Wieso dann nicht nur die Möglichkeit haben auf OK zu klicken, immer und überall!")
        
        col1, col2 = st.columns(2)

        with col1:
            if st.button("Ja", key="antwort7_ja"):
                st.session_state.punkte += 50
                st.session_state["antwort7"] = "Ja"
                st.session_state["frage_index"] += 1
        
        with col2:
            if st.button("Nein", key="antwort7_nein"):
                st.session_state.punkte += 50
                st.session_state["antwort7"] = "Nein"
                st.session_state["frage_index"] += 1

elif st.session_state["frage_index"]== 7:
        st.write("Hast du langeweile? Wie wäre es mit dem letzten Musical-Hit: Ado und Eva, eine Liebesgeschichte von zwei umstrittenen historischen Persönlichkeiten?")
        
        col1, col2 = st.columns(2)
        
        with col1:
            if st.button("Ja", key="antwort8_ja"):
                st.session_state.punkte += 70
                st.session_state["antwort8"] = "Ja"
                st.session_state["frage_index"] += 1
        
        with col2:
            if st.button("Nein", key="antwort8_nein"):
                st.session_state.punkte += 20
                st.session_state["antwort8"] = "Nein"
                st.session_state["frage_index"] += 1

elif st.session_state["frage_index"] == 8:
        st.write("Wie wäre es in einem Land zu leben in dem nur Superlative erlaubt sind, also die höchstmöglichste Steigerung eines Adjektiv? Sei gespannt auf den neuen Film The Fastest and the Most Furious Ever!")
        
        col1, col2 = st.columns(2)

        with col1:
            if st.button("Ja", key="antwort9_ja"):
                st.session_state.punkte += 100
                st.session_state["antwort9"] = "Ja"
                st.session_state["frage_index"] += 1
        
        with col2:
            if st.button("Nein", key="antwort9_nein"):
                st.session_state.punkte +=0
                st.session_state["antwort9"] = "Nein"
                st.session_state["frage_index"] += 1

elif st.session_state["frage_index"] == 9:
        st.write("Fandest du das Quiz unterhaltsam? Dann willkommen in Qualityland, diese Welt ist was für dich!")
        
        col1, col2 = st.columns(2)

        with col1:
            if st.button("Ja", key="antwort10_ja"):
                st.session_state.punkte += 40
                st.session_state["antwort10"] = "Ja"
                st.session_state["frage_index"] += 1
        
        with col2:
            if st.button("Nein", key="antwort10_nein"):
                st.session_state.punkte += 30
                st.session_state["antwort10"] = "Nein"
                st.session_state["frage_index"] += 1


rollen = {
0: "echte*r Qualitätssicherer",
1: "gewöhnliche*r Schüler*in",
2: "Systemsprenger",
3: "echte*r Qualitätsbürger*in",
4: "sprachlichlich extremistische Person",
5: "Konsumopfer",
6:  "NPC"
}

if st.session_state["frage_index"] == 10:
        st.success("Fertig!")
        punkte = int(st.session_state["punkte"])
        level = punkte // 5
        st.write(f"Dein Algorithmus hat entschieden. Dein Level ist: {level}!")
        if st.session_state["antwort1"] == "Ja":
            rolle = "echte*r Qualitätssicherer"
            st.write(f"Du interresierst dich für die Kriegsführung in Qualityland! Dann sei gespannt auf die Leseprobe, da erfärst du alles wissenswerte über die Kriegsführung in Qualityland!")
        elif st.session_state["antwort2"] == "Ja":
            rolle = "gewöhnlicher Teenager"
            st.write(f"Keine Sorge, Programme wie ChatGPT und co. sind in Qualityland in nahezu jedem Gerät verbaut. Zum Beispiel in selbstfahrenden Autos, smarte Türen, Mülleimer, Lieferdrohnen,...")
        elif st.session_state.punkte >= 500:
            rolle = "Systemsprenger"
            st.write(f"Wow, du hast über Level 100! Qualityland passt gut zu deinen Ansichten, aber du solltest dich darauf einstellen dass du dort höchstwarscheinlich mit einem Level unter 10 als 'nutzlos' klassifiziert wirst. Wie die meisten Qualitätsbürger*innen, also Einwohnende in Qualityland.")
        elif st.session_state["antwort5"] == "Ja":
            rolle = "echte*r Qualitätsbürger*in"
            st.write(f"Das System in Qualityland ist natürlich cool, wenn deine Eltern Anwält*innen, Präsident*innen oder dergleichen sind. Aber würtest du gerne, dass du mit Nachnamen Schüler*in, Sexarbeiter*in oder Flüchtling heißt?")
        elif st.session_state["antwort9"]== "Ja":
            rolle = "sprachlich extrimistische Person"
            st.write(f"Du wirst die Werbeslogans in Qualityland liebeb!")
        elif st.session_state["antwort6"]=="Ja":
            rolle = "Konsumopfer"
            st.write(f"Qualityland bietet viele weitere Angebote! Wie wäre es mit einer von zum Beispiel Lobbygruppen, Parteien oder Unternehmen gestellten Nannys, die deinen Kindern mit persönlicher Werbung zuballern?")
        elif st.session_state["antwort8"]=="Ja":
            rolle = "Konsumopfer"
            st.write(f"Du scheinst kulturell interessiert zu sein? In Qualityland erwarten dich viele weitere Hits wie Mussollini in Love.")
        else:
            rolle = "NPC"
            st.write(f"Herzlichen Glückwunsch!!! Deine konsum- und gesellschaftskritische Einstellung und deine Fähigkeit selbstständig zu hinterfragen, ermöglich es dir die gesellschaftskritischen Aspekte des Buches in vollen Zügen zu genießen! Auch wenn ich dir von einer Reise nach Qualityland abraten würde.")
        st.write(f"Außerdem wurdest du als '{rolle}' klassifiziert!")
