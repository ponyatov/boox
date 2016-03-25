map<string,Sym*> env;
void env_init() {
	env["MODULE"] = new Sym(MODULE);
}
