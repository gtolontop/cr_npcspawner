Config = {}

Config.DrawDistance = 50.0


Config.NPCTable = {
  {
    coords    = vec4(-1697.406616, -1109.920898, 13.137695, 260.787415),
    model     = "csb_mweather",
    hasAnimation = true,
    animDict  = "amb@world_human_stand_impatient@male@no_sign@idle_a",
    animName  = "idle_a",
    category  = "vendor",
    texts     = {
      "Bienvenue chez le marchand !",
      "Je vends les meilleurs produits !",
      "N’hésitez pas à jeter un œil !"
    }
  },
  {
    coords    = vec4(-1695.00, -1110.50, 13.14, 90.0),
    model     = "a_m_m_farmer_01",
    hasAnimation = false,
    category  = "citizen",
    texts     = {
      "Quel beau quartier…",
      "La vie est douce ici.",
      "Salut voisin !"
    }
  },
}
