
public class MainClass {
	public static void main(String[] args){
		Display d = new Display();
		Shell shell = new Shell(d);
		shell.open();
		
		while(!shell.isDisposed()){
			if(!d.readAndDispatch()){
				d.sleep();
			}
		}
	}
}
