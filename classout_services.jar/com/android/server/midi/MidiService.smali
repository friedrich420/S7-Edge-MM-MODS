.class public Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/midi/MidiService$DeviceConnection;,
        Lcom/android/server/midi/MidiService$Device;,
        Lcom/android/server/midi/MidiService$Client;,
        Lcom/android/server/midi/MidiService$Lifecycle;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MidiService"


# instance fields
.field private final mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothServiceUid:I

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicesByInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/media/midi/MidiDeviceInfo;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesByServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 621
    new-array v0, v1, [Landroid/media/midi/MidiDeviceInfo;

    sput-object v0, EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    .line 847
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    .line 555
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    .line 81
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, mClients:Ljava/util/HashMap;

    .line 84
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, mDevicesByInfo:Ljava/util/HashMap;

    .line 88
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, mBluetoothDevices:Ljava/util/HashMap;

    .line 92
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, mDevicesByServer:Ljava/util/HashMap;

    .line 95
    iput v9, p0, mNextDeviceId:I

    .line 103
    new-instance v7, Lcom/android/server/midi/MidiService$1;

    invoke-direct {v7, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v7, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 556
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    .line 558
    iget-object v7, p0, mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8, v9}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 560
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.media.midi.MidiDeviceService"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 561
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v8, 0x80

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 563
    .local v5, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_5f

    .line 564
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 565
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    if-ge v2, v0, :cond_5f

    .line 566
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v6, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 567
    .local v6, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v6, :cond_5c

    .line 568
    invoke-direct {p0, v6}, addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 565
    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 575
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v6    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_5f
    :try_start_5f
    iget-object v7, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "com.android.bluetoothmidiservice"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_67
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5f .. :try_end_67} :catch_75

    move-result-object v3

    .line 579
    .local v3, "info":Landroid/content/pm/PackageInfo;
    :goto_68
    if-eqz v3, :cond_78

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_78

    .line 580
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v7, p0, mBluetoothServiceUid:I

    .line 584
    :goto_74
    return-void

    .line 576
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :catch_75
    move-exception v1

    .line 577
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v3, 0x0

    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_68

    .line 582
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_78
    const/4 v7, -0x1

    iput v7, p0, mBluetoothServiceUid:I

    goto :goto_74
.end method

.method static synthetic access$000(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, addPackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, removePackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;
    .param p1, "x1"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 60
    invoke-direct {p0, p1}, removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 60
    iget-object v0, p0, mBluetoothDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 60
    iget-object v0, p0, mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/midi/MidiService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 60
    iget v0, p0, mBluetoothServiceUid:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 60
    iget-object v0, p0, mDevicesByServer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/midi/MidiService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 60
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/midi/MidiService;

    .prologue
    .line 60
    iget-object v0, p0, mDevicesByInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method private addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    .registers 25
    .param p1, "type"    # I
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p8, "serviceInfo"    # Landroid/content/pm/ServiceInfo;
    .param p9, "isPrivate"    # Z
    .param p10, "uid"    # I

    .prologue
    .line 774
    iget v3, p0, mNextDeviceId:I

    add-int/lit8 v2, v3, 0x1

    iput v2, p0, mNextDeviceId:I

    .line 775
    .local v3, "id":I
    new-instance v1, Landroid/media/midi/MidiDeviceInfo;

    move v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 778
    .local v1, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-eqz p7, :cond_1f

    .line 780
    :try_start_1a
    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1f} :catch_76

    .line 787
    :cond_1f
    const/4 v4, 0x0

    .line 788
    .local v4, "device":Lcom/android/server/midi/MidiService$Device;
    const/4 v10, 0x0

    .line 789
    .local v10, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3b

    .line 790
    const-string v2, "bluetooth_device"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    .end local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v10, Landroid/bluetooth/BluetoothDevice;

    .line 792
    .restart local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    check-cast v4, Lcom/android/server/midi/MidiService$Device;

    .line 793
    .restart local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v4, :cond_3b

    .line 794
    invoke-virtual {v4, v1}, Lcom/android/server/midi/MidiService$Device;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    .line 797
    :cond_3b
    if-nez v4, :cond_4a

    .line 798
    new-instance v4, Lcom/android/server/midi/MidiService$Device;

    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    move-object v5, p0

    move-object/from16 v6, p7

    move-object v7, v1

    move-object/from16 v8, p8

    move/from16 v9, p10

    invoke-direct/range {v4 .. v9}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V

    .line 800
    .restart local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_4a
    iget-object v2, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    if-eqz v10, :cond_56

    .line 802
    iget-object v2, p0, mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    :cond_56
    iget-object v5, p0, mClients:Ljava/util/HashMap;

    monitor-enter v5

    .line 806
    :try_start_59
    iget-object v2, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "i$":Ljava/util/Iterator;
    :goto_63
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/midi/MidiService$Client;

    .line 807
    .local v11, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v11, v4}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_63

    .line 809
    .end local v11    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v13    # "i$":Ljava/util/Iterator;
    :catchall_73
    move-exception v2

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_59 .. :try_end_75} :catchall_73

    throw v2

    .line 781
    .end local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :catch_76
    move-exception v12

    .line 782
    .local v12, "e":Landroid/os/RemoteException;
    const-string v2, "MidiService"

    const-string v5, "RemoteException in setDeviceInfo()"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const/4 v1, 0x0

    .line 811
    .end local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local v12    # "e":Landroid/os/RemoteException;
    :goto_7f
    return-object v1

    .line 809
    .restart local v1    # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .restart local v4    # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local v10    # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .restart local v13    # "i$":Ljava/util/Iterator;
    :cond_80
    :try_start_80
    monitor-exit v5
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_73

    goto :goto_7f
.end method

.method private addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V
    .registers 28
    .param p1, "serviceInfo"    # Landroid/content/pm/ServiceInfo;

    .prologue
    .line 850
    const/16 v21, 0x0

    .line 853
    .local v21, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.media.midi.MidiDeviceService"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_a1
    .catchall {:try_start_2 .. :try_end_d} :catchall_10e

    move-result-object v21

    .line 855
    if-nez v21, :cond_16

    .line 980
    if-eqz v21, :cond_15

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    .line 982
    :cond_15
    :goto_15
    return-void

    .line 858
    :cond_16
    :try_start_16
    const-string v2, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 860
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping MIDI device service "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": it does not require the permission "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4a} :catch_a1
    .catchall {:try_start_16 .. :try_end_4a} :catchall_10e

    .line 980
    if-eqz v21, :cond_15

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_15

    .line 866
    :cond_50
    const/4 v8, 0x0

    .line 867
    .local v8, "properties":Landroid/os/Bundle;
    const/4 v4, 0x0

    .line 868
    .local v4, "numInputPorts":I
    const/4 v5, 0x0

    .line 869
    .local v5, "numOutputPorts":I
    const/4 v11, 0x0

    .line 870
    .local v11, "isPrivate":Z
    :try_start_54
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 871
    .local v18, "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v20, "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5e
    :goto_5e
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_61} :catch_a1
    .catchall {:try_start_54 .. :try_end_61} :catchall_10e

    move-result v16

    .line 875
    .local v16, "eventType":I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-ne v0, v2, :cond_6d

    .line 980
    if-eqz v21, :cond_15

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_15

    .line 877
    :cond_6d
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_1d9

    .line 878
    :try_start_72
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 879
    .local v23, "tagName":Ljava/lang/String;
    const-string/jumbo v2, "device"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_115

    .line 880
    if-eqz v8, :cond_c5

    .line 881
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nested <device> elements in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_a0} :catch_a1
    .catchall {:try_start_72 .. :try_end_a0} :catchall_10e

    goto :goto_5e

    .line 977
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v11    # "isPrivate":Z
    .end local v16    # "eventType":I
    .end local v18    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v20    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "tagName":Ljava/lang/String;
    :catch_a1
    move-exception v15

    .line 978
    .local v15, "e":Ljava/lang/Exception;
    :try_start_a2
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load component info "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_be
    .catchall {:try_start_a2 .. :try_end_be} :catchall_10e

    .line 980
    if-eqz v21, :cond_15

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_15

    .line 885
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v8    # "properties":Landroid/os/Bundle;
    .restart local v11    # "isPrivate":Z
    .restart local v16    # "eventType":I
    .restart local v18    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "tagName":Ljava/lang/String;
    :cond_c5
    :try_start_c5
    new-instance v8, Landroid/os/Bundle;

    .end local v8    # "properties":Landroid/os/Bundle;
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 886
    .restart local v8    # "properties":Landroid/os/Bundle;
    const-string/jumbo v2, "service_info"

    move-object/from16 v0, p1

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 887
    const/4 v4, 0x0

    .line 888
    const/4 v5, 0x0

    .line 889
    const/4 v11, 0x0

    .line 891
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 892
    .local v14, "count":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_db
    move/from16 v0, v17

    if-ge v0, v14, :cond_5e

    .line 893
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 894
    .local v19, "name":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    .line 895
    .local v24, "value":Ljava/lang/String;
    const-string/jumbo v2, "private"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 896
    const-string/jumbo v2, "true"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 892
    :goto_103
    add-int/lit8 v17, v17, 0x1

    goto :goto_db

    .line 898
    :cond_106
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_10d} :catch_a1
    .catchall {:try_start_c5 .. :try_end_10d} :catchall_10e

    goto :goto_103

    .line 980
    .end local v4    # "numInputPorts":I
    .end local v5    # "numOutputPorts":I
    .end local v8    # "properties":Landroid/os/Bundle;
    .end local v11    # "isPrivate":Z
    .end local v14    # "count":I
    .end local v16    # "eventType":I
    .end local v17    # "i":I
    .end local v18    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19    # "name":Ljava/lang/String;
    .end local v20    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :catchall_10e
    move-exception v2

    if-eqz v21, :cond_114

    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_114
    throw v2

    .line 901
    .restart local v4    # "numInputPorts":I
    .restart local v5    # "numOutputPorts":I
    .restart local v8    # "properties":Landroid/os/Bundle;
    .restart local v11    # "isPrivate":Z
    .restart local v16    # "eventType":I
    .restart local v18    # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v20    # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23    # "tagName":Ljava/lang/String;
    :cond_115
    :try_start_115
    const-string/jumbo v2, "input-port"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_177

    .line 902
    if-nez v8, :cond_140

    .line 903
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<input-port> outside of <device> in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 907
    :cond_140
    add-int/lit8 v4, v4, 0x1

    .line 909
    const/16 v22, 0x0

    .line 910
    .local v22, "portName":Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 911
    .restart local v14    # "count":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_14a
    move/from16 v0, v17

    if-ge v0, v14, :cond_16b

    .line 912
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 913
    .restart local v19    # "name":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    .line 914
    .restart local v24    # "value":Ljava/lang/String;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_174

    .line 915
    move-object/from16 v22, v24

    .line 919
    .end local v19    # "name":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_16b
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    .line 911
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v24    # "value":Ljava/lang/String;
    :cond_174
    add-int/lit8 v17, v17, 0x1

    goto :goto_14a

    .line 920
    .end local v14    # "count":I
    .end local v17    # "i":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "portName":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_177
    const-string/jumbo v2, "output-port"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 921
    if-nez v8, :cond_1a2

    .line 922
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<output-port> outside of <device> in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5e

    .line 926
    :cond_1a2
    add-int/lit8 v5, v5, 0x1

    .line 928
    const/16 v22, 0x0

    .line 929
    .restart local v22    # "portName":Ljava/lang/String;
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v14

    .line 930
    .restart local v14    # "count":I
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_1ac
    move/from16 v0, v17

    if-ge v0, v14, :cond_1cd

    .line 931
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v19

    .line 932
    .restart local v19    # "name":Ljava/lang/String;
    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v24

    .line 933
    .restart local v24    # "value":Ljava/lang/String;
    const-string/jumbo v2, "name"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d6

    .line 934
    move-object/from16 v22, v24

    .line 938
    .end local v19    # "name":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_1cd
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5e

    .line 930
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v24    # "value":Ljava/lang/String;
    :cond_1d6
    add-int/lit8 v17, v17, 0x1

    goto :goto_1ac

    .line 940
    .end local v14    # "count":I
    .end local v17    # "i":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v22    # "portName":Ljava/lang/String;
    .end local v23    # "tagName":Ljava/lang/String;
    .end local v24    # "value":Ljava/lang/String;
    :cond_1d9
    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_5e

    .line 941
    invoke-interface/range {v21 .. v21}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v23

    .line 942
    .restart local v23    # "tagName":Ljava/lang/String;
    const-string/jumbo v2, "device"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 943
    if-eqz v8, :cond_5e

    .line 944
    if-nez v4, :cond_211

    if-nez v5, :cond_211

    .line 945
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<device> with no ports in metadata for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20f
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_20f} :catch_a1
    .catchall {:try_start_115 .. :try_end_20f} :catchall_10e

    goto/16 :goto_5e

    .line 952
    :cond_211
    :try_start_211
    move-object/from16 v0, p0

    iget-object v2, v0, mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v13

    .line 954
    .local v13, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v12, v13, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_220
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_211 .. :try_end_220} :catch_24e
    .catch Ljava/lang/Exception; {:try_start_211 .. :try_end_220} :catch_a1
    .catchall {:try_start_211 .. :try_end_220} :catchall_10e

    .line 961
    .local v12, "uid":I
    :try_start_220
    move-object/from16 v0, p0

    iget-object v0, v0, mDevicesByInfo:Ljava/util/HashMap;

    move-object/from16 v25, v0

    monitor-enter v25
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_227} :catch_a1
    .catchall {:try_start_220 .. :try_end_227} :catchall_10e

    .line 962
    const/4 v3, 0x2

    :try_start_228
    sget-object v2, EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    sget-object v2, EMPTY_STRING_ARRAY:[Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v10, p1

    invoke-direct/range {v2 .. v12}, addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;

    .line 967
    monitor-exit v25
    :try_end_245
    .catchall {:try_start_228 .. :try_end_245} :catchall_26d

    .line 970
    const/4 v8, 0x0

    .line 971
    :try_start_246
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 972
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_5e

    .line 955
    .end local v12    # "uid":I
    .end local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_24e
    move-exception v15

    .line 956
    .local v15, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "could not fetch ApplicationInfo for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26b
    .catch Ljava/lang/Exception; {:try_start_246 .. :try_end_26b} :catch_a1
    .catchall {:try_start_246 .. :try_end_26b} :catchall_10e

    goto/16 :goto_5e

    .line 967
    .end local v15    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v12    # "uid":I
    .restart local v13    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catchall_26d
    move-exception v2

    :try_start_26e
    monitor-exit v25
    :try_end_26f
    .catchall {:try_start_26e .. :try_end_26f} :catchall_26d

    :try_start_26f
    throw v2
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_26f .. :try_end_270} :catch_a1
    .catchall {:try_start_26f .. :try_end_270} :catchall_10e
.end method

.method private addPackageDeviceServers(Ljava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 833
    :try_start_0
    iget-object v4, p0, mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x84

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_7} :catch_d

    move-result-object v2

    .line 840
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 841
    .local v3, "services":[Landroid/content/pm/ServiceInfo;
    if-nez v3, :cond_28

    .line 845
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "services":[Landroid/content/pm/ServiceInfo;
    :cond_c
    :goto_c
    return-void

    .line 835
    :catch_d
    move-exception v0

    .line 836
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "MidiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePackageUpdate could not find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 842
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "services":[Landroid/content/pm/ServiceInfo;
    :cond_28
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    array-length v4, v3

    if-ge v1, v4, :cond_c

    .line 843
    aget-object v4, v3, v1

    invoke-direct {p0, v4}, addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 842
    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method

.method private getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 258
    iget-object v3, p0, mClients:Ljava/util/HashMap;

    monitor-enter v3

    .line 259
    :try_start_3
    iget-object v2, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 260
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_1b

    .line 261
    new-instance v0, Lcom/android/server/midi/MidiService$Client;

    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    invoke-direct {v0, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_22

    .line 264
    .restart local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    const/4 v2, 0x0

    :try_start_13
    invoke-interface {p1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_16} :catch_1e
    .catchall {:try_start_13 .. :try_end_16} :catchall_22

    .line 268
    :try_start_16
    iget-object v2, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_1b
    monitor-exit v3

    move-object v2, v0

    :goto_1d
    return-object v2

    .line 265
    :catch_1e
    move-exception v1

    .line 266
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_1d

    .line 271
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_22
    move-exception v2

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 7
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 761
    iget-object v3, p0, mClients:Ljava/util/HashMap;

    monitor-enter v3

    .line 762
    :try_start_3
    iget-object v2, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 763
    .local v0, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    goto :goto_d

    .line 765
    .end local v0    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_1d
    move-exception v2

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1d

    .line 766
    return-void
.end method

.method private removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .registers 7
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 816
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v2

    .line 817
    .local v2, "server":Landroid/media/midi/IMidiDeviceServer;
    if-eqz v2, :cond_f

    .line 818
    iget-object v3, p0, mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {v2}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :cond_f
    iget-object v3, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    iget-object v4, p0, mClients:Ljava/util/HashMap;

    monitor-enter v4

    .line 823
    :try_start_1b
    iget-object v3, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 824
    .local v0, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_25

    .line 826
    .end local v0    # "c":Lcom/android/server/midi/MidiService$Client;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_35
    move-exception v3

    monitor-exit v4
    :try_end_37
    .catchall {:try_start_1b .. :try_end_37} :catchall_35

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_38
    :try_start_38
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_35

    .line 827
    return-void
.end method

.method private removePackageDeviceServers(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 985
    iget-object v3, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v3

    .line 986
    :try_start_3
    iget-object v2, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 987
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 988
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 989
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 990
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 991
    invoke-direct {p0, v0}, removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    goto :goto_d

    .line 994
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :catchall_2a
    move-exception v2

    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_2d
    :try_start_2d
    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 995
    return-void
.end method

.method private updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V
    .registers 10
    .param p1, "uid"    # I
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 604
    iget-object v5, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 605
    :try_start_3
    iget-object v4, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 607
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_33

    move-result v4

    if-eqz v4, :cond_d

    .line 609
    :try_start_1f
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v3

    .line 610
    .local v3, "status":Landroid/media/midi/MidiDeviceStatus;
    if-eqz v3, :cond_d

    .line 611
    invoke-interface {p2, v3}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29
    .catchall {:try_start_1f .. :try_end_28} :catchall_33

    goto :goto_d

    .line 613
    .end local v3    # "status":Landroid/media/midi/MidiDeviceStatus;
    :catch_29
    move-exception v1

    .line 614
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v4, "MidiService"

    const-string/jumbo v6, "remote exception"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 618
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_33
    move-exception v4

    monitor-exit v5
    :try_end_35
    .catchall {:try_start_2a .. :try_end_35} :catchall_33

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_36
    :try_start_36
    monitor-exit v5
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_33

    .line 619
    return-void
.end method


# virtual methods
.method public closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "clientToken"    # Landroid/os/IBinder;
    .param p2, "deviceToken"    # Landroid/os/IBinder;

    .prologue
    .line 691
    invoke-direct {p0, p1}, getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 692
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    .line 694
    :goto_6
    return-void

    .line 693
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Landroid/os/IBinder;)V

    goto :goto_6
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 999
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "android.permission.DUMP"

    const-string v6, "MidiService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    new-instance v3, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v4, "  "

    invoke-direct {v3, p2, v4}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1002
    .local v3, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v4, "MIDI Manager State:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1003
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1005
    const-string v4, "Devices:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1006
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1007
    iget-object v5, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 1008
    :try_start_23
    iget-object v4, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 1009
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2d

    .line 1011
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_41
    move-exception v4

    monitor-exit v5
    :try_end_43
    .catchall {:try_start_23 .. :try_end_43} :catchall_41

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_44
    :try_start_44
    monitor-exit v5
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_41

    .line 1012
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1014
    const-string v4, "Clients:"

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 1016
    iget-object v5, p0, mClients:Ljava/util/HashMap;

    monitor-enter v5

    .line 1017
    :try_start_53
    iget-object v4, p0, mClients:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Client;

    .line 1018
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5d

    .line 1020
    .end local v0    # "client":Lcom/android/server/midi/MidiService$Client;
    :catchall_71
    move-exception v4

    monitor-exit v5
    :try_end_73
    .catchall {:try_start_53 .. :try_end_73} :catchall_71

    throw v4

    :cond_74
    :try_start_74
    monitor-exit v5
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_71

    .line 1021
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 1022
    return-void
.end method

.method public getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .registers 6
    .param p1, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;

    .prologue
    .line 740
    iget-object v1, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 741
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v0, :cond_24

    .line 742
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 744
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v1

    return-object v1
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .registers 7

    .prologue
    .line 624
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v1, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/midi/MidiDeviceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 627
    .local v3, "uid":I
    iget-object v5, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 628
    :try_start_c
    iget-object v4, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 629
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 630
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 633
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_30
    move-exception v4

    monitor-exit v5
    :try_end_32
    .catchall {:try_start_c .. :try_end_32} :catchall_30

    throw v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_33
    :try_start_33
    monitor-exit v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_30

    .line 635
    sget-object v4, EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/media/midi/MidiDeviceInfo;

    return-object v4
.end method

.method public getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 725
    iget-object v4, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v4

    .line 726
    :try_start_3
    iget-object v3, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 727
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 728
    .local v2, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_d

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 731
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    monitor-exit v4

    .line 734
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :goto_34
    return-object v3

    :cond_35
    const/4 v3, 0x0

    monitor-exit v4

    goto :goto_34

    .line 735
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_38
    move-exception v3

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v3
.end method

.method public openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "bluetoothDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 667
    invoke-direct {p0, p1}, getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 668
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    .line 687
    :goto_6
    return-void

    .line 672
    :cond_7
    iget-object v5, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 673
    :try_start_a
    iget-object v4, p0, mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 674
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v1, :cond_1e

    .line 675
    new-instance v1, Lcom/android/server/midi/MidiService$Device;

    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    invoke-direct {v1, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 676
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    iget-object v4, p0, mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v4, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    :cond_1e
    monitor-exit v5
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_2a

    .line 681
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 683
    .local v2, "identity":J
    :try_start_23
    invoke-virtual {v0, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2d

    .line 685
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    .line 678
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v2    # "identity":J
    :catchall_2a
    move-exception v4

    :try_start_2b
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v4

    .line 685
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local v2    # "identity":J
    :catchall_2d
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 12
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "deviceInfo"    # Landroid/media/midi/MidiDeviceInfo;
    .param p3, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 641
    invoke-direct {p0, p1}, getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 642
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    .line 662
    :goto_6
    return-void

    .line 645
    :cond_7
    iget-object v5, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v5

    .line 646
    :try_start_a
    iget-object v4, p0, mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 647
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v1, :cond_31

    .line 648
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "device does not exist: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    .end local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw v4

    .line 650
    .restart local v1    # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_31
    :try_start_31
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-nez v4, :cond_43

    .line 651
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "Attempt to open private device with wrong UID"

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 653
    :cond_43
    monitor-exit v5
    :try_end_44
    .catchall {:try_start_31 .. :try_end_44} :catchall_2e

    .line 656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 658
    .local v2, "identity":J
    :try_start_48
    invoke-virtual {v0, v1, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_4f

    .line 660
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6

    :catchall_4f
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;
    .registers 21
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "numInputPorts"    # I
    .param p3, "numOutputPorts"    # I
    .param p4, "inputPortNames"    # [Ljava/lang/String;
    .param p5, "outputPortNames"    # [Ljava/lang/String;
    .param p6, "properties"    # Landroid/os/Bundle;
    .param p7, "type"    # I

    .prologue
    .line 700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 701
    .local v11, "uid":I
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_16

    const/16 v1, 0x3e8

    if-eq v11, v1, :cond_16

    .line 702
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "only system can create USB devices"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 703
    :cond_16
    const/4 v1, 0x3

    move/from16 v0, p7

    if-ne v0, v1, :cond_28

    iget v1, p0, mBluetoothServiceUid:I

    if-eq v11, v1, :cond_28

    .line 704
    new-instance v1, Ljava/lang/SecurityException;

    const-string/jumbo v2, "only MidiBluetoothService can create Bluetooth devices"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 707
    :cond_28
    iget-object v12, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v12

    .line 708
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move/from16 v2, p7

    move v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object v8, p1

    :try_start_3a
    invoke-direct/range {v1 .. v11}, addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    monitor-exit v12

    return-object v1

    .line 710
    :catchall_40
    move-exception v1

    monitor-exit v12
    :try_end_42
    .catchall {:try_start_3a .. :try_end_42} :catchall_40

    throw v1
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 588
    invoke-direct {p0, p1}, getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 589
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    .line 593
    :goto_6
    return-void

    .line 590
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->addListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 592
    # getter for: Lcom/android/server/midi/MidiService$Client;->mUid:I
    invoke-static {v0}, Lcom/android/server/midi/MidiService$Client;->access$1200(Lcom/android/server/midi/MidiService$Client;)I

    move-result v1

    invoke-direct {p0, v1, p2}, updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V

    goto :goto_6
.end method

.method public setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 7
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 749
    iget-object v1, p0, mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 750
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_4a

    .line 751
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v2

    if-eq v1, v2, :cond_44

    .line 752
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceStatus() caller UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match device\'s UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 755
    :cond_44
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V

    .line 756
    invoke-direct {p0, v0, p2}, notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    .line 758
    :cond_4a
    return-void
.end method

.method public unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 6
    .param p1, "server"    # Landroid/media/midi/IMidiDeviceServer;

    .prologue
    .line 715
    iget-object v2, p0, mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v2

    .line 716
    :try_start_3
    iget-object v1, p0, mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 717
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_14

    .line 718
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 720
    :cond_14
    monitor-exit v2

    .line 721
    return-void

    .line 720
    .end local v0    # "device":Lcom/android/server/midi/MidiService$Device;
    :catchall_16
    move-exception v1

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 597
    invoke-direct {p0, p1}, getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 598
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    .line 600
    :goto_6
    return-void

    .line 599
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeListener(Landroid/media/midi/IMidiDeviceListener;)V

    goto :goto_6
.end method
