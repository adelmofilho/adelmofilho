# Mínimos quadrados via máxima verossimilhança
Adelmo Filho ( <aguiar.soul@gmail.com> )  
`r format(Sys.time(), '%d %B, %Y')`  


<br>

# Método dos mínimos quadrados

$$ y_i = \beta  + \alpha x_i + e_i  $$

$$ SSE = \sum_{i=1}^{N} e_i^2 $$

$$ \frac{\partial SSE}{\partial \beta}(\alpha,\beta) = \frac{\partial}{\partial \beta}  \bigg(\sum_{i=1}^{N} (y_i - \beta  - \alpha x_i)^2\bigg)  = -2\sum_{i=1}^{N} (y_i - \beta  - \alpha x_i)$$

$$ \frac{\partial SSE}{\partial \alpha}(\alpha,\beta) = \frac{\partial}{\partial \alpha}  \bigg(\sum_{i=1}^{N} (y_i - \beta  - \alpha x_i)^2\bigg)  = -2\sum_{i=1}^{N} x_i(y_i - \beta  - \alpha x_i)$$

Isto ? equivalente a $\begin{cases} \frac{\partial SSE}{\partial \beta}(\alpha,\beta) = 0 \\ \frac{\partial SSE}{\partial \alpha}(\alpha,\beta) = 0
\end{cases}$. Deta forma, chega-se ?s seguintes equa??es:

$$\alpha = \sum_{i=1}^{N} y_i - \beta\bar{x}$$

$$\beta = \frac{\sum_{i=1}^{N} (x_i-\bar{x})(y_i-\bar{y})}{\sum_{i=1}^{N} (x_i-\bar{x})^2}$$

<img src="Post5_files/figure-html/unnamed-chunk-1-1.png" style="display: block; margin: auto;" />


# Função de verossimilhança



# Método da Máxima Verossimilhança

<p style="text-align: justify;">**Pressuposto 1:** Assume-se que a distribuição dos erros experimentais no domínio de análise é conhecida.</p>

<p style="text-align: justify;">**Pressuposto 2:**  Os desvios (erros) experimentais apresentam uma distribuição de probabilidade normal (gaussiana).</p>

$$p(Z^e | Z, V_Z) = \frac{1}{\sqrt{2\cdot \pi \cdot det(V_Z)}}\cdot e^{-\frac{1}{2} \left ( Z^e -Z\right )^T\cdot V_{Z}^{-1}\cdot \left ( Z^e -Z\right )}$$

$$Z^T = \begin{bmatrix}
 X^T & Y^T
\end{bmatrix}$$

<p style="text-align: justify;">**Pressuposto 3:** Os experimentos são realizados de forma independente, não há correlação entre eles.</p>

$$\mathcal{L}(Z, V_Z | Z^e) = \prod_{i = 1}^{n}p_i(Z_{i}^{e} | Z_i, V_{Zi})$$

<p style="text-align: justify;">**Pressuposto 4:** As medições das variáveis independentes não estão correlacionadas com as medições das variáveis dependentes.</p>

$$\mathcal{L}(Z, V_Z | Z^e) =\prod_{i = 1}^{n}\left [p_i(X_{i}^{e} | X_i, V_{Xi}\cdot p_i(Y_{i}^{e} | Y_i, V_{Yi})  \right ]$$

<p style="text-align: justify;">**Pressuposto 5:** O valor das variáveis independentes é conhecido com grande precisão.</p>

$$\left ( x^e-x \right )\approx 0$$

$$\mathcal{L}(Z, V_Z | Z^e) =\prod_{i = 1}^{n}p_i(Y_{i}^{e} | Y_i, V_{Yi})$$

$$\mathcal{L}(Z, V_Z | Z^e) =\prod_{i = 1}^{n}\prod_{j = 1}^{n_y}p_{yij}(Y_{ij}^{e} | Y_{ij}, V_{Yij})$$

<p style="text-align: justify;">**Pressuposto 6:** As medições experimentais podem ser realizadas de forma independente. </p>

$V_{Yij} = \sigma_{yij}^{2}$

$$\mathcal{L}(Z, V_Z | Z^e) =\prod_{i = 1}^{n}\prod_{j = 1}^{n_y}p_{yij}(Y_{ij}^{e} | Y_{ij}, \sigma_{yij}^{2})$$

$$\mathcal{L}(Z, V_Z | Z^e) =\prod_{i = 1}^{n}\prod_{j = 1}^{n_y}\frac{1}{\sqrt{2\cdot \pi \cdot \sigma_{yij}^{2}}}\cdot e^{-\frac{1}{2}\cdot \frac{\left (Y_{ij}^{e}-Y_{ij}  \right )^2}{\sigma_{yij}^{2}}}$$

<p style="text-align: justify;">**Pressuposto 7:** Admite-se válida a hipótese do modelo ideal. </p>

$$Y^{m} = f(X^{m}, \Theta )$$

$$\mathcal{L}(Z^{m}, V_Z | Z^e) =\prod_{i = 1}^{n}\prod_{j = 1}^{n_y}\frac{1}{\sqrt{2\cdot \pi \cdot \sigma_{yij}^{2}}}\cdot e^{-\frac{1}{2}\cdot \frac{\left (Y_{ij}^{e}-Y_{ij}^{m}(X^{m}, \Theta)  \right )^2}{\sigma_{yij}^{2}}}$$

<p style="text-align: justify;">**Pressuposto 8:** É válida a hipótese do experimento bem-realizado. </p>

$$F_{obj} = ln\left [ \mathcal{L}(Z^{m}, V_Z | Z^e) \right ]$$

$$F_{obj} = \sum_{i=1}^{n}\sum_{j=1}^{n_{y}}ln\left [ \frac{1}{\sqrt{2\cdot \pi \cdot \sigma_{yij}^{2}}} \right ]-\frac{1}{2}\sum_{i=1}^{n}\sum_{j=1}^{n_{y}}\frac{\left (Y_{ij}^{e}-Y_{ij}^{m}(X^{m}, \Theta)  \right )^2}{\sigma_{yij}^{2}}$$

$$\max\left \{ F_{obj}\right \} = \underset{\Theta}{\arg\max}\left \{ -\frac{1}{2}\sum_{i=1}^{n}\sum_{j=1}^{n_{y}}\frac{\left (Y_{ij}^{e}-Y_{ij}^{m}(X^{m}, \Theta)  \right )^2}{\sigma_{yij}^{2}}\right \}$$

$$\max\left \{ F_{obj}\right \} = \underset{\Theta}{\arg\min}\left \{ \sum_{i=1}^{n}\sum_{j=1}^{n_{y}}\frac{\left (Y_{ij}^{e}-Y_{ij}^{m}(X^{m}, \Theta)  \right )^2}{\sigma_{yij}^{2}}\right \}$$

<p style="text-align: justify;">**Pressuposto 9:** O modelo proposto possui uma única variável predita. </p>

$$\max\left \{ F_{obj}\right \} = \underset{\Theta}{\arg\min}\left \{ \sum_{i=1}^{n}\frac{\left (y_{ij}^{e}-y_{ij}^{m}(X^{m}, \Theta)  \right )^2}{\sigma_{yij}^{2}}\right \}$$

<p style="text-align: justify;">**Pressuposto 10:** Os erros de medição são constantes em todo domínio de análise. </p>

$$\max\left \{ F_{obj}\right \} = \underset{\Theta}{\arg\min}\left \{ \sum_{i=1}^{n}\left (y_{ij}^{e}-y_{ij}^{m}(X^{m}, \Theta)  \right )^2\right \} \equiv \text{MMQ}$$









