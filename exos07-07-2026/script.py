import pandas as pd

df = pd.DataFrame({
    "nb_transactions": int(5000),
    "prix_moyen": float(285432.75),
    "ville": str("Paris"),
    "is_vente": bool(),
    "villes": ["lyon", "marseille", "nante", "nice"]
})

df.dtypes