# 🌍 EU Trade & Time Series Forecasting

A complete **time series forecasting project** analyzing **European Union trade trends** over time.  
The study evaluates multiple forecasting methods, compares performance, and provides actionable **policy recommendations** for sustainable trade growth in the EU.

---

## 📌 Project Highlights

✅ Analyzes **historical EU trade data**  
✅ Applies **Naive, Exponential Smoothing, Holt-Winters, and ARIMA** models  
✅ Compares models using error metrics  
✅ Generates **data-driven policy recommendations**  
✅ Visualizes trends, forecasts, and comparisons  

---

## 📂 Dataset & Tools

- **Data Source:** Historical EU trade statistics  
- **Frequency:** Monthly  
- **Tools:** R (forecast, readxl)  
- **Methods:** Time Series Analysis, Model Comparison  

---

## 📈 Forecasting Models

| Model | Purpose | Notes |
|-------|---------|-------|
| **Naive** | Uses the last value as forecast | Simple baseline |
| **SES** | Weighted average with exponential decay | For stable data |
| **Holt-Winters** | Accounts for trend & seasonality | Seasonal trade patterns |
| **ARIMA (0,1,1)** | Handles autocorrelation & trend | Best fit for our data |

---

## 📊 Visualizations

### 1. EU Trade Over Time
![EU Trade Time Series](images/eu_trade_ts.png)

### 2. Model Forecast Examples

**Naive Method**
![Naive Forecast](images/naive_forecast.png)

**Simple Exponential Smoothing**
![SES Forecast](images/ses_forecast.png)

**Holt-Winters**
![Holt-Winters Forecast](images/holt_winters_forecast.png)

**ARIMA (0,1,1)**
![ARIMA Forecast](images/arima_forecast.png)

---

## 🔍 Model Performance

*(Example table — replace values with your computed results)*

| Model | Error Metric (SSE) | Rank |
|-------|--------------------|------|
| ARIMA (0,1,1) | **250.3** | 🏆 1 |
| Holt-Winters | 410.2 | 2 |
| SES | 520.4 | 3 |
| Naive | 550.8 | 4 |

---

## 💡 Key Insights

- **ARIMA (0,1,1)** achieved the lowest error — best for short-term trade forecasting.  
- **Holt-Winters** works well for capturing seasonality in trade data.  
- Naive & SES provide simple but less accurate benchmarks.  
- Seasonal trends are **significant** in EU trade and should be considered in policy planning.

---

## 🛠 Policy Recommendations

1. **Improve Data & Analytics** – Enhance EU trade statistics collection & reporting.  
2. **Diversify Markets** – Encourage trade beyond traditional partners.  
3. **Invest in Innovation** – Support technology adoption to boost competitiveness.  
4. **Prioritize Sustainability** – Align trade with environmental goals.  
5. **Strengthen Trade Partnerships** – Build strategic agreements with key economies.  
6. **Develop Skills** – Train workforce for international trade demands.  
7. **Harmonize Policies** – Reduce intra-EU trade barriers.  
8. **Monitor & Evaluate** – Establish a regular trade policy review system.  

---

## 📜 Conclusion

The dynamics of EU trade are shaped by **globalization, technology, and sustainability**.  
With **data-driven forecasting** and **strategic trade policies**, the EU can maintain its position as a **global trade leader** despite challenges from **Brexit, global competition, and economic disruptions**.

---
