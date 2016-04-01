.class public Lcom/absolute/android/persistence/AppProfile;
.super Ljava/lang/Object;
.source "AppProfile.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/AppProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private m_accessKey:Ljava/lang/String;

.field private m_checkRunningSecs:Ljava/lang/Integer;

.field private m_extras:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m_maxRestartAttempts:Ljava/lang/Integer;

.field private m_maxUpdateAttempts:Ljava/lang/Integer;

.field private m_monitor:Ljava/lang/Boolean;

.field private m_monitorIntents:[Ljava/lang/String;

.field private m_packageName:Ljava/lang/String;

.field private m_persist:Ljava/lang/Boolean;

.field private m_restartIntent:Ljava/lang/String;

.field private m_startOnInstall:Ljava/lang/Boolean;

.field private m_startOnInstallIntent:Ljava/lang/String;

.field private m_updateIpAddress:Ljava/lang/String;

.field private m_updateRetryMinutes:Ljava/lang/Integer;

.field private m_updateUrl:Ljava/lang/String;

.field private m_versionCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const-string v0, "UpdateHostSPKIHash"

    sput-object v0, UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    .line 647
    new-instance v0, Lcom/absolute/android/persistence/AppProfile$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppProfile$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, m_packageName:Ljava/lang/String;

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_versionCode:Ljava/lang/Integer;

    .line 29
    iput-object v2, p0, m_updateUrl:Ljava/lang/String;

    .line 30
    iput-object v2, p0, m_updateIpAddress:Ljava/lang/String;

    .line 31
    iput-object v2, p0, m_accessKey:Ljava/lang/String;

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    .line 34
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_persist:Ljava/lang/Boolean;

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_startOnInstall:Ljava/lang/Boolean;

    .line 36
    iput-object v2, p0, m_startOnInstallIntent:Ljava/lang/String;

    .line 37
    iput-object v2, p0, m_restartIntent:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_monitor:Ljava/lang/Boolean;

    .line 39
    iput-object v2, p0, m_monitorIntents:[Ljava/lang/String;

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_checkRunningSecs:Ljava/lang/Integer;

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    .line 42
    iput-object v2, p0, m_extras:Ljava/util/HashMap;

    .line 611
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v3, p0, m_packageName:Ljava/lang/String;

    .line 28
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_versionCode:Ljava/lang/Integer;

    .line 29
    iput-object v3, p0, m_updateUrl:Ljava/lang/String;

    .line 30
    iput-object v3, p0, m_updateIpAddress:Ljava/lang/String;

    .line 31
    iput-object v3, p0, m_accessKey:Ljava/lang/String;

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    .line 34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_persist:Ljava/lang/Boolean;

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_startOnInstall:Ljava/lang/Boolean;

    .line 36
    iput-object v3, p0, m_startOnInstallIntent:Ljava/lang/String;

    .line 37
    iput-object v3, p0, m_restartIntent:Ljava/lang/String;

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_monitor:Ljava/lang/Boolean;

    .line 39
    iput-object v3, p0, m_monitorIntents:[Ljava/lang/String;

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_checkRunningSecs:Ljava/lang/Integer;

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    .line 42
    iput-object v3, p0, m_extras:Ljava/util/HashMap;

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_packageName:Ljava/lang/String;

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_versionCode:Ljava/lang/Integer;

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_updateUrl:Ljava/lang/String;

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_updateIpAddress:Ljava/lang/String;

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_accessKey:Ljava/lang/String;

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d3

    move v0, v1

    :goto_83
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_persist:Ljava/lang/Boolean;

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d5

    move v0, v1

    :goto_90
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_startOnInstall:Ljava/lang/Boolean;

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_startOnInstallIntent:Ljava/lang/String;

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_restartIntent:Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d7

    :goto_a8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_monitor:Ljava/lang/Boolean;

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, m_monitorIntents:[Ljava/lang/String;

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_checkRunningSecs:Ljava/lang/Integer;

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    .line 675
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, m_extras:Ljava/util/HashMap;

    .line 676
    return-void

    :cond_d3
    move v0, v2

    .line 667
    goto :goto_83

    :cond_d5
    move v0, v2

    .line 668
    goto :goto_90

    :cond_d7
    move v1, v2

    .line 671
    goto :goto_a8
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/AppProfile$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/absolute/android/persistence/AppProfile$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, <init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "versionCode"    # I
    .param p3, "updateUrl"    # Ljava/lang/String;
    .param p4, "updateIpAddress"    # Ljava/lang/String;
    .param p5, "accessKey"    # Ljava/lang/String;
    .param p6, "maxUpdateAttempts"    # I
    .param p7, "updateRetryMinutes"    # I
    .param p8, "persist"    # Z
    .param p9, "startOnInstall"    # Z
    .param p10, "startOnInstallIntent"    # Ljava/lang/String;
    .param p11, "restartIntent"    # Ljava/lang/String;
    .param p12, "monitor"    # Z
    .param p13, "monitorIntents"    # [Ljava/lang/String;
    .param p14, "checkRunningSecs"    # I
    .param p15, "maxRestartAttempts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z[",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 587
    .local p16, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, m_packageName:Ljava/lang/String;

    .line 28
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_versionCode:Ljava/lang/Integer;

    .line 29
    const/4 v1, 0x0

    iput-object v1, p0, m_updateUrl:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    iput-object v1, p0, m_updateIpAddress:Ljava/lang/String;

    .line 31
    const/4 v1, 0x0

    iput-object v1, p0, m_accessKey:Ljava/lang/String;

    .line 32
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 33
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    .line 34
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, m_persist:Ljava/lang/Boolean;

    .line 35
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, m_startOnInstall:Ljava/lang/Boolean;

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, m_startOnInstallIntent:Ljava/lang/String;

    .line 37
    const/4 v1, 0x0

    iput-object v1, p0, m_restartIntent:Ljava/lang/String;

    .line 38
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, m_monitor:Ljava/lang/Boolean;

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, m_monitorIntents:[Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_checkRunningSecs:Ljava/lang/Integer;

    .line 41
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    .line 42
    const/4 v1, 0x0

    iput-object v1, p0, m_extras:Ljava/util/HashMap;

    .line 589
    if-nez p1, :cond_5e

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "package name is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 590
    :cond_5e
    if-nez p2, :cond_69

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "version is 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 592
    :cond_69
    iput-object p1, p0, m_packageName:Ljava/lang/String;

    .line 593
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_versionCode:Ljava/lang/Integer;

    .line 594
    iput-object p3, p0, m_updateUrl:Ljava/lang/String;

    .line 595
    iput-object p4, p0, m_updateIpAddress:Ljava/lang/String;

    .line 596
    iput-object p5, p0, m_accessKey:Ljava/lang/String;

    .line 597
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 598
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    .line 599
    invoke-static {p8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, m_persist:Ljava/lang/Boolean;

    .line 600
    invoke-static {p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, m_startOnInstall:Ljava/lang/Boolean;

    .line 601
    iput-object p10, p0, m_startOnInstallIntent:Ljava/lang/String;

    .line 602
    iput-object p11, p0, m_restartIntent:Ljava/lang/String;

    .line 603
    invoke-static {p12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, m_monitor:Ljava/lang/Boolean;

    .line 604
    move-object/from16 v0, p13

    iput-object v0, p0, m_monitorIntents:[Ljava/lang/String;

    .line 605
    invoke-static/range {p14 .. p14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_checkRunningSecs:Ljava/lang/Integer;

    .line 606
    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    .line 607
    move-object/from16 v0, p16

    iput-object v0, p0, m_extras:Ljava/util/HashMap;

    .line 608
    return-void
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 761
    if-nez p0, :cond_9

    .line 762
    if-nez p1, :cond_7

    .line 768
    :cond_6
    :goto_6
    return v0

    :cond_7
    move v0, v1

    .line 762
    goto :goto_6

    .line 764
    :cond_9
    if-nez p1, :cond_f

    .line 765
    if-eqz p0, :cond_6

    move v0, v1

    goto :goto_6

    .line 768
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_6
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 689
    new-instance v0, Lcom/absolute/android/persistence/AppProfile;

    invoke-direct {v0}, <init>()V

    .line 690
    .local v0, "clone":Lcom/absolute/android/persistence/AppProfile;
    iget-object v2, p0, m_packageName:Ljava/lang/String;

    if-eqz v2, :cond_b8

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, m_packageName:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_11
    iput-object v2, v0, m_packageName:Ljava/lang/String;

    .line 691
    iget-object v2, p0, m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, m_versionCode:Ljava/lang/Integer;

    .line 692
    iget-object v2, p0, m_updateUrl:Ljava/lang/String;

    if-eqz v2, :cond_bb

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, m_updateUrl:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2a
    iput-object v2, v0, m_updateUrl:Ljava/lang/String;

    .line 693
    iget-object v2, p0, m_updateIpAddress:Ljava/lang/String;

    if-eqz v2, :cond_be

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, m_updateIpAddress:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_37
    iput-object v2, v0, m_updateIpAddress:Ljava/lang/String;

    .line 694
    iget-object v2, p0, m_accessKey:Ljava/lang/String;

    if-eqz v2, :cond_c1

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, m_accessKey:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_44
    iput-object v2, v0, m_accessKey:Ljava/lang/String;

    .line 695
    iget-object v2, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 696
    iget-object v2, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, m_updateRetryMinutes:Ljava/lang/Integer;

    .line 697
    iget-object v2, p0, m_persist:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, m_persist:Ljava/lang/Boolean;

    .line 698
    iget-object v2, p0, m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, m_startOnInstall:Ljava/lang/Boolean;

    .line 699
    iget-object v2, p0, m_startOnInstallIntent:Ljava/lang/String;

    if-eqz v2, :cond_c3

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, m_startOnInstallIntent:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_81
    iput-object v2, v0, m_startOnInstallIntent:Ljava/lang/String;

    .line 700
    iget-object v2, p0, m_restartIntent:Ljava/lang/String;

    if-eqz v2, :cond_c5

    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, m_restartIntent:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_8e
    iput-object v2, v0, m_restartIntent:Ljava/lang/String;

    .line 701
    iget-object v2, p0, m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, m_monitor:Ljava/lang/Boolean;

    .line 702
    iget-object v2, p0, m_monitorIntents:[Ljava/lang/String;

    if-eqz v2, :cond_c7

    .line 703
    iget-object v2, p0, m_monitorIntents:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, m_monitorIntents:[Ljava/lang/String;

    .line 704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a8
    iget-object v2, p0, m_monitorIntents:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_c7

    .line 705
    iget-object v2, v0, m_monitorIntents:[Ljava/lang/String;

    iget-object v4, p0, m_monitorIntents:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v2, v1

    .line 704
    add-int/lit8 v1, v1, 0x1

    goto :goto_a8

    .end local v1    # "i":I
    :cond_b8
    move-object v2, v3

    .line 690
    goto/16 :goto_11

    :cond_bb
    move-object v2, v3

    .line 692
    goto/16 :goto_2a

    :cond_be
    move-object v2, v3

    .line 693
    goto/16 :goto_37

    :cond_c1
    move-object v2, v3

    .line 694
    goto :goto_44

    :cond_c3
    move-object v2, v3

    .line 699
    goto :goto_81

    :cond_c5
    move-object v2, v3

    .line 700
    goto :goto_8e

    .line 708
    :cond_c7
    iget-object v2, p0, m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, m_checkRunningSecs:Ljava/lang/Integer;

    .line 709
    iget-object v2, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, m_maxRestartAttempts:Ljava/lang/Integer;

    .line 710
    iget-object v2, p0, m_extras:Ljava/util/HashMap;

    if-eqz v2, :cond_ee

    iget-object v2, p0, m_extras:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    :goto_eb
    iput-object v2, v0, m_extras:Ljava/util/HashMap;

    .line 712
    return-object v0

    :cond_ee
    move-object v2, v3

    .line 710
    goto :goto_eb
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 618
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 724
    if-ne p0, p1, :cond_5

    .line 741
    :cond_4
    :goto_4
    return v1

    .line 729
    :cond_5
    if-nez p1, :cond_9

    move v1, v2

    .line 730
    goto :goto_4

    .line 734
    :cond_9
    instance-of v3, p1, Lcom/absolute/android/persistence/AppProfile;

    if-nez v3, :cond_f

    move v1, v2

    .line 735
    goto :goto_4

    :cond_f
    move-object v0, p1

    .line 739
    check-cast v0, Lcom/absolute/android/persistence/AppProfile;

    .line 741
    .local v0, "apObj":Lcom/absolute/android/persistence/AppProfile;
    iget-object v3, p0, m_packageName:Ljava/lang/String;

    iget-object v4, v0, m_packageName:Ljava/lang/String;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_versionCode:Ljava/lang/Integer;

    iget-object v4, v0, m_versionCode:Ljava/lang/Integer;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_updateUrl:Ljava/lang/String;

    iget-object v4, v0, m_updateUrl:Ljava/lang/String;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_updateIpAddress:Ljava/lang/String;

    iget-object v4, v0, m_updateIpAddress:Ljava/lang/String;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_accessKey:Ljava/lang/String;

    iget-object v4, v0, m_accessKey:Ljava/lang/String;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    iget-object v4, v0, m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    iget-object v4, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_persist:Ljava/lang/Boolean;

    iget-object v4, v0, m_persist:Ljava/lang/Boolean;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_startOnInstall:Ljava/lang/Boolean;

    iget-object v4, v0, m_startOnInstall:Ljava/lang/Boolean;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_startOnInstallIntent:Ljava/lang/String;

    iget-object v4, v0, m_startOnInstallIntent:Ljava/lang/String;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_restartIntent:Ljava/lang/String;

    iget-object v4, v0, m_restartIntent:Ljava/lang/String;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_monitor:Ljava/lang/Boolean;

    iget-object v4, v0, m_monitor:Ljava/lang/Boolean;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_monitorIntents:[Ljava/lang/String;

    iget-object v4, v0, m_monitorIntents:[Ljava/lang/String;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_checkRunningSecs:Ljava/lang/Integer;

    iget-object v4, v0, m_checkRunningSecs:Ljava/lang/Integer;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    iget-object v4, v0, m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    iget-object v3, p0, m_extras:Ljava/util/HashMap;

    iget-object v4, v0, m_extras:Ljava/util/HashMap;

    invoke-static {v3, v4}, areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_b2
    move v1, v2

    goto/16 :goto_4
.end method

.method public getAccessKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, m_accessKey:Ljava/lang/String;

    return-object v0
.end method

.method public getCheckRunningSecs()I
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExtras()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, m_extras:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsMonitored()Z
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsPersisted()Z
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getMaxRestartAttempts()I
    .registers 2

    .prologue
    .line 386
    iget-object v0, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMaxUpdateAttempts()I
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getMonitorIntents()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 334
    iget-object v0, p0, m_monitorIntents:[Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, m_packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRestartIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, m_restartIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getStartOnInstall()Z
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getStartOnInstallIntent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, m_startOnInstallIntent:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateHostSPKIHash()Ljava/lang/String;
    .registers 4

    .prologue
    .line 429
    const/4 v0, 0x0

    .line 430
    .local v0, "updateHostSPKIHash":Ljava/lang/String;
    iget-object v1, p0, m_extras:Ljava/util/HashMap;

    if-eqz v1, :cond_f

    .line 431
    iget-object v1, p0, m_extras:Ljava/util/HashMap;

    sget-object v2, UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "updateHostSPKIHash":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 433
    .restart local v0    # "updateHostSPKIHash":Ljava/lang/String;
    :cond_f
    return-object v0
.end method

.method public getUpdateIpAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, m_updateIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateRetryMinutes()I
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getUpdateUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, m_updateUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, m_accessKey:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setCheckRunningSecs(I)V
    .registers 3
    .param p1, "secs"    # I

    .prologue
    .line 374
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_checkRunningSecs:Ljava/lang/Integer;

    .line 375
    return-void
.end method

.method public setExtras(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, m_extras:Ljava/util/HashMap;

    .line 420
    return-void
.end method

.method public setIsMonitored(Z)V
    .registers 3
    .param p1, "monitor"    # Z

    .prologue
    .line 317
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_monitor:Ljava/lang/Boolean;

    .line 318
    return-void
.end method

.method public setIsPersisted(Z)V
    .registers 3
    .param p1, "persist"    # Z

    .prologue
    .line 208
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_persist:Ljava/lang/Boolean;

    .line 209
    return-void
.end method

.method public setMaxRestartAttempts(I)V
    .registers 3
    .param p1, "maxAttempts"    # I

    .prologue
    .line 396
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    .line 397
    return-void
.end method

.method public setMaxUpdateAttempts(I)V
    .registers 3
    .param p1, "maxAttempts"    # I

    .prologue
    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    .line 165
    return-void
.end method

.method public setMonitorIntents([Ljava/lang/String;)V
    .registers 2
    .param p1, "monitorIntents"    # [Ljava/lang/String;

    .prologue
    .line 349
    iput-object p1, p0, m_monitorIntents:[Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setRestartIntent(Ljava/lang/String;)V
    .registers 2
    .param p1, "startIntent"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, m_restartIntent:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setStartOnInstall(Z)V
    .registers 3
    .param p1, "startOnInstall"    # Z

    .prologue
    .line 230
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, m_startOnInstall:Ljava/lang/Boolean;

    .line 231
    return-void
.end method

.method public setStartOnInstallIntent(Ljava/lang/String;)V
    .registers 2
    .param p1, "startIntent"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, m_startOnInstallIntent:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setUpdateHostSPKIHash(Ljava/lang/String;)V
    .registers 4
    .param p1, "updateHostSPKIHash"    # Ljava/lang/String;

    .prologue
    .line 442
    iget-object v0, p0, m_extras:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 443
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, m_extras:Ljava/util/HashMap;

    .line 445
    :cond_b
    iget-object v0, p0, m_extras:Ljava/util/HashMap;

    sget-object v1, UPDATE_HOST_SPKI_HASH_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    return-void
.end method

.method public setUpdateIpAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "updateIpAddress"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, m_updateIpAddress:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setUpdateRetryMinutes(I)V
    .registers 3
    .param p1, "mins"    # I

    .prologue
    .line 188
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    .line 189
    return-void
.end method

.method public setUpdateUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "updateUrl"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, m_updateUrl:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setVersion(I)V
    .registers 4
    .param p1, "versionCode"    # I

    .prologue
    .line 75
    if-nez p1, :cond_b

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "version is 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, m_versionCode:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    .local v0, "appProfileText":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Version = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsPersisted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_persist:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IsMonitored = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    const-string v5, "MonitorIntents = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v5, p0, m_monitorIntents:[Ljava/lang/String;

    if-eqz v5, :cond_a7

    .line 465
    iget-object v1, p0, m_monitorIntents:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8a
    if-ge v2, v3, :cond_a7

    aget-object v4, v1, v2

    .line 466
    .local v4, "monitorIntent":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    add-int/lit8 v2, v2, 0x1

    goto :goto_8a

    .line 469
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "monitorIntent":Ljava/lang/String;
    :cond_a7
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckRunningSecs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MaxRestartAttempts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartOnInstall = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StartOnInstallIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RestartIntent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_restartIntent:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AccessKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_accessKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateUrl = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_updateUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateIpAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MaxUpdateAttempts = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateRetryMinutes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UpdateHostSPKIHash = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, getUpdateHostSPKIHash()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 626
    iget-object v0, p0, m_packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, m_versionCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget-object v0, p0, m_updateUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, m_updateIpAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, m_accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, m_maxUpdateAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget-object v0, p0, m_updateRetryMinutes:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget-object v0, p0, m_persist:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7b

    move v0, v1

    :goto_3a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget-object v0, p0, m_startOnInstall:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7d

    move v0, v1

    :goto_46
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-object v0, p0, m_startOnInstallIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, m_restartIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, m_monitor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7f

    :goto_5b
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    iget-object v0, p0, m_monitorIntents:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, m_checkRunningSecs:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    iget-object v0, p0, m_maxRestartAttempts:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-object v0, p0, m_extras:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 642
    return-void

    :cond_7b
    move v0, v2

    .line 633
    goto :goto_3a

    :cond_7d
    move v0, v2

    .line 634
    goto :goto_46

    :cond_7f
    move v1, v2

    .line 637
    goto :goto_5b
.end method
