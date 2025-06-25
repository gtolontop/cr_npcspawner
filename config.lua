Config = {}

Config.TextDrawDistance    = 15.0
Config.PedActivateDistance = 100.0
Config.Debug = true

Config.NPCTable = {
  -- 1. Citoyen en pleine fête
  {
    coords       = vec4(-1701.230713, -1110.857178, 14.114990, 348.661407),
    model        = "a_m_m_skater_01",
    hasAnimation = true,
    animDict     = "amb@world_human_partying@female@partying_beer@base",
    animName     = "base",
    category     = "citizen",
    texts        = {
      "La fête bat son plein !",
      "Qui veut danser ?",
      "Plus de musique, allez !"
    }
  },
  -- 2. Citoyen heureux
  {
    coords       = vec4(-1699.964844, -1112.386841, 14.114990, 331.653534),
    model        = "a_f_m_bevhills_01",
    hasAnimation = true,
    animDict     = "amb@world_human_cheering@female@cheering_low",
    animName     = "cheer_low",
    category     = "citizen",
    texts        = {
      "Quelle belle journée !",
      "Je suis tellement heureux !",
      "Profitez de la vie !"
    }
  },
  -- 3. Citoyen en rendez-vous (date)
  {
    coords       = vec4(-1698.079102, -1114.021973, 14.114990, 272.125977),
    model        = "a_m_m_business_01",
    hasAnimation = true,
    animDict     = "amb@world_human_stand_fleeing@male@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Ce rendez-vous est parfait...",
      "J'adore cet endroit.",
      "C'est un moment inoubliable."
    }
  },
  -- 4. Couple amoureux
  {
    coords       = vec4(-1698.000000, -1115.103271, 14.114990, 280.629913),
    model        = "a_f_y_beach_01",
    hasAnimation = true,
    animDict     = "amb@world_human_hang_out_street@female_a@idle_a",
    animName     = "idle_b",
    category     = "citizen",
    texts        = {
      "Rien de mieux qu'une promenade ensemble.",
      "Je suis tellement chanceuse.",
      "On devrait revenir ici."
    }
  },
  -- 5. Nouveau rôle superviseur de l'attraction
  {
    coords       = vec4(-1712.676880, -1105.239502, 14.114990, 184.251968),
    model        = "s_m_m_security_01",
    hasAnimation = true,
    animDict     = "amb@world_human_cop_idles@female@idle_b",
    animName     = "idle_e",
    category     = "worker",
    texts        = {
      "Tout est sous contrôle ici.",
      "Bienvenue à bord, je supervise tout.",
      "La sécurité avant tout."
    }
  },
  -- 6. Collègue superviseur
  {
    coords       = vec4(-1713.389038, -1105.437378, 14.114990, 206.929138),
    model        = "s_m_m_doctor_01",
    hasAnimation = true,
    animDict     = "amb@world_human_clipboard@male@idle_a",
    animName     = "idle_c",
    category     = "worker",
    texts        = {
      "Les rapports sont à jour.",
      "Je vérifie tout ici.",
      "Signalez-moi toute anomalie."
    }
  },
  -- 7. Regarde l'attraction, contente
  {
    coords       = vec4(-1717.753906, -1107.362671, 14.114990, 221.102371),
    model        = "a_f_m_beach_02",
    hasAnimation = true,
    animDict     = "amb@world_human_leaning@female@wall@back@holding_elbow@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Ça a l'air génial !",
      "J'ai hâte d'y aller.",
      "Trop cool cette attraction."
    }
  },
  -- 8. A peur pour ceux dans l'attraction
  {
    coords       = vec4(-1718.334106, -1108.219727, 14.114990, 232.440948),
    model        = "a_m_m_business_02",
    hasAnimation = true,
    animDict     = "amb@world_human_stand_fear@male@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "J'espère qu'ils vont bien…",
      "C'est un peu flippant !",
      "Ça ne me plairait pas."
    }
  },
  -- 9. Veut faire l'attraction
  {
    coords       = vec4(-1719.032959, -1109.261475, 14.114990, 232.440948),
    model        = "a_m_y_hipster_01",
    hasAnimation = true,
    animDict     = "amb@world_human_hang_out_street@male_a@idle_a",
    animName     = "idle_b",
    category     = "citizen",
    texts        = {
      "C'est mon tour maintenant !",
      "Allez, je me lance !",
      "Le grand frisson !"
    }
  },
  -- 10. A peur que ça s'écroule
  {
    coords       = vec4(-1721.393433, -1112.861572, 14.114990, 252.283463),
    model        = "a_f_m_skidrow_01",
    hasAnimation = true,
    animDict     = "amb@world_human_stand_fear@female@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Ça tremble un peu trop à mon goût.",
      "On va tomber !",
      "Je ne supporte pas ce bruit..."
    }
  },
  -- 11. Elle est avec sa pote qui la rassure
  {
    coords       = vec4(-1721.525269, -1113.797852, 14.114990, 255.118103),
    model        = "a_f_y_bevhills_02",
    hasAnimation = true,
    animDict     = "amb@world_human_happy_standing@female@happy_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "T'inquiète pas, tout va bien se passer.",
      "Je suis là pour toi.",
      "Regarde, rien ne bouge."
    }
  },
  -- 12. Regarde la mer
  {
    coords       = vec4(-1719.164795, -1124.043945, 14.114990, 141.732285),
    model        = "a_m_y_beach_03",
    hasAnimation = true,
    animDict     = "amb@world_human_stand_fishing@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Quelle vue magnifique !",
      "Le calme de l'océan…",
      "Respirer l'air marin."
    }
  },
  -- 13. Contemple avec une amie
  {
    coords       = vec4(-1718.597778, -1124.637329, 14.114990, 136.062988),
    model        = "a_f_m_beach_01",
    hasAnimation = true,
    animDict     = "amb@world_human_stand_fishing@idle_b",
    animName     = "idle_b",
    category     = "citizen",
    texts        = {
      "On devrait venir plus souvent.",
      "C'est si apaisant.",
      "La mer nous appelle."
    }
  },
  -- 14. Regarde une attraction et veut la faire
  {
    coords       = vec4(-1699.595581, -1129.002197, 13.137695, 263.622070),
    model        = "a_m_m_snowball",
    hasAnimation = true,
    animDict     = "amb@world_human_leaning@male@wall@back@holding_elbow@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Cette attraction m'intrigue...",
      "Je dois l'essayer !",
      "Ça a l'air fun."
    }
  },
  -- 15. Gros qui regarde le stand de hotdog
  {
    coords       = vec4(-1699.595581, -1129.002197, 13.137695, 263.622070),
    model        = "a_m_m_bevhills_01",
    hasAnimation = true,
    animDict     = "amb@world_human_eating@male@male_a@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Miam, ça a l'air délicieux !",
      "Je pourrais en manger plein.",
      "Un hotdog, s'il vous plaît."
    }
  },
  -- 16. Sa femme trouve qu'il est déjà trop gros
  {
    coords       = vec4(-1700.188965, -1140.276978, 13.137695, 164.409454),
    model        = "a_f_m_beach_02",
    hasAnimation = true,
    animDict     = "amb@world_human_woman_idle_fat@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Chéri, tu en as assez mangé !",
      "Fais attention à ta ligne.",
      "Un seul suffit !"
    }
  },
  -- 17. Un autre gros qui les trouve appétissants
  {
    coords       = vec4(-1702.232910, -1142.109863, 13.120850, 263.622070),
    model        = "a_m_m_ktown_01",
    hasAnimation = true,
    animDict     = "amb@world_human_eating@male@male_b@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Je veux goûter ça moi aussi !",
      "Ils ont l'air trop bons.",
      "Point chaud, s'il vous plaît."
    }
  },
  -- 18. Vendeur de hotdog
  {
    coords       = vec4(-1699.648315, -1143.204346, 13.120850, 34.015747),
    model        = "s_m_y_chef_01",
    hasAnimation = true,
    animDict     = "amb@world_human_stand_mobile@male@text@enter",
    animName     = "enter",
    category     = "vendor",
    texts        = {
      "Hotdogs chauds, qui veut goûter ?",
      "Meilleurs hotdogs de la ville !",
      "N'attendez pas, passez commande."
    }
  },
  -- 19. Se demande à quoi sert le panneau
  {
    coords       = vec4(-1698.540649, -1150.562622, 13.053467, 110.551186),
    model        = "a_m_m_roadcyc_01",
    hasAnimation = true,
    animDict     = "amb@world_human_tourist_map@female@base",
    animName     = "base",
    category     = "citizen",
    texts        = {
      "C'est quoi ce panneau ?",
      "J'ai besoin d'un plan...",
      "Quelqu'un peut expliquer ?"
    }
  },
  -- 20. Mec qui fouille les poubelles
  {
    coords       = vec4(-1692.883545, -1156.061523, 13.019775, 204.094498),
    model        = "a_m_m_tramp_01",
    hasAnimation = true,
    animDict     = "amb@world_human_bum_wash@male@low@idle_a",
    animName     = "idle_a",
    category     = "homeless",
    texts        = {
      "Peut-être que je trouverai quelque chose...",
      "Rien ici non plus...",
      "Bon, j’essaie là-bas."
    }
  },
  -- 21. SDF qui fouille poubelle et parle avec son pote
  {
    coords       = vec4(-1688.294556, -1156.259277, 13.002930, 317.480316),
    model        = "a_m_m_tramp_02",
    hasAnimation = true,
    animDict     = "amb@world_human_bum_standing@twitchy@idle_a",
    animName     = "idle_a",
    category     = "homeless",
    texts        = {
      "T'as trouvé quelque chose ?",
      "Rien pour l'instant.",
      "Continue de chercher."
    }
  },
  -- 22. Pote SDF qui fouille aussi et discute
  {
    coords       = vec4(-1686.237305, -1157.973633, 13.002930, 323.149597),
    model        = "a_m_m_tramp_01",
    hasAnimation = true,
    animDict     = "amb@world_human_bum_smoking@male@idle_a",
    animName     = "idle_a",
    category     = "homeless",
    texts        = {
      "J'ai peut-être une canette vide...",
      "Ça peut toujours servir.",
      "Tiens, regarde ça."
    }
  },
  -- 23. Électricien qui accompagne son ami
  {
    coords       = vec4(-1684.391235, -1154.927490, 13.002930, 90.708656),
    model        = "s_m_m_chemsec_01",
    hasAnimation = true,
    animDict     = "anim@heists@box_carry@",
    animName     = "idle",
    category     = "worker",
    texts        = {
      "Passe-moi la pince svp.",
      "Le compteur semble hors service.",
      "Je répare ça tout de suite."
    }
  },
  -- 24. Technicien trafiquant le compteur
  {
    coords       = vec4(-1685.314331, -1154.215332, 13.002930, 144.566910),
    model        = "s_m_m_maid_01",
    hasAnimation = true,
    animDict     = "amb@world_human_gardener_plant@male@base",
    animName     = "base",
    category     = "worker",
    texts        = {
      "Un petit réglage maison...",
      "Il devrait repartir maintenant.",
      "Chut, personne ne le saura."
    }
  },
  -- 25. Quelqu'un choqué en groupe de l'attraction
  {
    coords       = vec4(-1675.331909, -1151.446167, 13.002930, 240.944885),
    model        = "a_m_m_eastsa_01",
    hasAnimation = true,
    animDict     = "amb@world_human_panic@male@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "C'est incroyable !",
      "Je n'en reviens pas !",
      "Quelle surprise !"
    }
  },
  -- 26. Son pote choqué du roller coaster
  {
    coords       = vec4(-1674.461548, -1150.905518, 13.002930, 229.606293),
    model        = "a_m_m_eastsa_02",
    hasAnimation = true,
    animDict     = "amb@world_human_movie_stars@male@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "C'était terrifiant !",
      "Je veux refaire tout de suite !",
      "Vraiment bluffant."
    }
  },
  -- 27. Amis qui ont vu un stand de barbe à papa
  {
    coords       = vec4(-1673.749390, -1150.193359, 13.002930, 325.984253),
    model        = "a_f_y_business_01",
    hasAnimation = true,
    animDict     = "amb@world_human_hang_out_street_fat@female@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Regarde ce stand !",
      "J'adore la barbe à papa.",
      "On en prend deux ?"
    }
  },
  -- 28. Gars avec popcorn cherchant des clients
  {
    coords       = vec4(-1677.468140, -1147.793457, 13.002930, 283.464569),
    model        = "s_m_m_movalien_01",
    hasAnimation = true,
    animDict     = "amb@world_human_smoking@male@male_a@idle_a",
    animName     = "idle_a",
    category     = "vendor",
    texts        = {
      "Popcorn chaud ! Qui veut ?",
      "Le meilleur popcorn du coin !",
      "N'hésitez pas, c'est frais !"
    }
  },
  -- 29. Stand de barbe à papa (gars invite)
  {
    coords       = vec4(-1667.367065, -1144.430786, 13.002930, 113.385826),
    model        = "s_m_m_strvend_01",
    hasAnimation = true,
    animDict     = "amb@world_human_peddler@female@idle_a",
    animName     = "idle_a",
    category     = "vendor",
    texts        = {
      "Barbe à papa fraîche !",
      "Viens goûter, c'est délicieux !",
      "Toujours sucré, toujours bon."
    }
  },
  -- 30. Gars qui regarde le Battle Bus de Fortnite
  {
    coords       = vec4(-1671.402222, -1143.890137, 13.002930, 0.0),
    model        = "a_m_m_skidrow_02",
    hasAnimation = true,
    animDict     = "amb@world_human_mobile_film_shocking@male@base",
    animName     = "base",
    category     = "citizen",
    texts        = {
      "C'est quoi ce bus volant ?",
      "Incroyable technologie !",
      "Je veux monter dedans !"
    }
  },
  -- 31. Son pote choqué car il est trop bien
  {
    coords       = vec4(-1672.272583, -1143.995605, 13.002930, 357.165344),
    model        = "a_m_m_business_03",
    hasAnimation = true,
    animDict     = "amb@world_human_mobile_film_shocking@male@high",
    animName     = "high",
    category     = "citizen",
    texts        = {
      "J'en reviens pas !",
      "C'est fou !",
      "Jamais vu ça."
    }
  },
  -- 32. Son pote qui veut rentrer dedans
  {
    coords       = vec4(-1673.182373, -1143.903320, 13.002930, 0.000000),
    model        = "a_m_m_indian_01",
    hasAnimation = true,
    animDict     = "amb@world_human_hang_out_street@male_b@idle_a",
    animName     = "idle_b",
    category     = "citizen",
    texts        = {
      "Ouvre la porte ! Je veux entrer !",
      "Allons-y tout de suite !",
      "C'est magique !"
    }
  },
  -- 33. Leur pote qui dit qu'ils n'ont pas le droit
  {
    coords       = vec4(-1673.986816, -1143.652710, 13.002930, 306.141724),
    model        = "a_f_y_runner_01",
    hasAnimation = true,
    animDict     = "amb@world_human_hello@female@base",
    animName     = "base",
    category     = "citizen",
    texts        = {
      "Vous ne pouvez pas entrer !",
      "C'est interdit ici.",
      "Désolé, la sécurité veille."
    }
  },
  -- 34. Gars qui regarde le bateau et veut en faire avec sa copine
  {
    coords       = vec4(-1664.083496, -1135.213135, 13.019775, 334.488190),
    model        = "a_m_y_boatstaff_01",
    hasAnimation = true,
    animDict     = "amb@world_human_stand_fishing@idle_c",
    animName     = "idle_c",
    category     = "citizen",
    texts        = {
      "Embarquons ensemble !",
      "La mer nous attend.",
      "Prête pour l'aventure ?"
    }
  },
  -- 35. Sa copine qui a peur
  {
    coords       = vec4(-1664.690063, -1134.685669, 13.002930, 314.645660),
    model        = "a_f_y_beach_03",
    hasAnimation = true,
    animDict     = "amb@world_human_stand_fear@female@idle_a",
    animName     = "idle_a",
    category     = "citizen",
    texts        = {
      "Je ne sais pas si c'est une bonne idée...",
      "Ça tangue un peu trop pour moi !",
      "Reste près de moi, s'il te plaît."
    }
  },
}

return Config
