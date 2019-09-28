* simplified interface
* decouplig the subsystem from many clients
* the facade should be fairly simple and should not contain much logic
* if there are mutiple operation then facade pattern imitates as if only one call is needed
* it removes the coupling of of client to the backend 
* facade shields the user from the complex details of the system and provide them with simplified view
* facade provide the simple interface for multiple clients i.e external system
* In facade the the external system is out customer


* its a wrapper above all the subsystem
* the client uses the facade only and not contact any of the subsystem directly




#Example -  Event Manager
* i need to do a event and i will contact the event manager and rest is the responsibility of event manager to arrange for food tent 


```
/* Complex parts */

class CPU {
    public void freeze() { ... }
    public void jump(long position) { ... }
    public void execute() { ... }
}

class Memory {
    public void load(long position, byte[] data) { ... }
}

class HardDrive {
    public byte[] read(long lba, int size) { ... }
}

/* Facade */

class ComputerFacade {
    private CPU processor;
    private Memory ram;
    private HardDrive hd;

    public ComputerFacade() {
        this.processor = new CPU();
        this.ram = new Memory();
        this.hd = new HardDrive();
    }

    public void start() {
        processor.freeze();
        ram.load(BOOT_ADDRESS, hd.read(BOOT_SECTOR, SECTOR_SIZE));
        processor.jump(BOOT_ADDRESS);
        processor.execute();
    }
}
```
