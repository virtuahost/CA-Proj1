//James Moak + Deep Ghosh's work for Proj 1

pt getF(pt P0, pt P1, vec V0, vec V1) {
  vec P0P1 = V(P0, P1);
  float h = n(P0P1);
  float alpha = angle(V0, V1);
  float g = (h/2.0)/(tan(alpha/2.0));
  vec P0P1rotated = R(P0P1).normalize();
  pt P2 = P(P0, S(h/2.0, P0P1.normalize()));
  pt F = P(P2, S(g, P0P1rotated));
  return F;
}