.class public Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;
.super Landroid/util/Singleton;
.source "DualScreenConfigs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DualScreenConfigs"

.field private static mOppositeLaunchAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSamsungHomeLaunchAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemResources:Landroid/content/res/Resources;

.field private static sInstance:Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mOppositeLaunchAppList:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    .line 112
    return-void
.end method

.method public static dump(Ljava/lang/String;)V
    .registers 11
    .param p0, "prefix"    # Ljava/lang/String;

    .prologue
    .line 92
    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    .line 93
    .local v7, "sw":Ljava/io/StringWriter;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 94
    .local v5, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DUALSCREEN MANAGER configurations (dumpsys dualscreen config)"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "localPrefix":Ljava/lang/String;
    invoke-virtual {v5, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Opposite launch app list :"

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    sget-object v8, mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 98
    .local v3, "oppositeLaunchListCount":I
    const/4 v0, 0x0

    .line 99
    .local v0, "i":I
    sget-object v8, mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_3a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 100
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3a

    .line 102
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_6a
    sget-object v8, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 103
    .local v6, "samsungHomeLaunchListCount":I
    const/4 v0, 0x0

    .line 104
    sget-object v8, mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_77
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 105
    .restart local v4    # "pkgName":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_77

    .line 107
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_a7
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;
    .registers 1

    .prologue
    .line 53
    sget-object v0, sInstance:Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;

    invoke-virtual {v0}, get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;

    return-object v0
.end method

.method private initConfig()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, loadResourcesConfig()V

    .line 117
    invoke-direct {p0}, loadSecProductFeature()V

    .line 118
    invoke-direct {p0}, loadCscFeatures()V

    .line 119
    return-void
.end method

.method public static isOppositeLaunchSupportApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 68
    sget-object v0, mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadCscFeatures()V
    .registers 1

    .prologue
    .line 163
    return-void
.end method

.method private loadResourcesConfig()V
    .registers 3

    .prologue
    .line 126
    const v0, 0x1070094

    sget-object v1, mOppositeLaunchAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, loadStringArray(ILjava/util/ArrayList;)V

    .line 127
    const v0, 0x1070095

    sget-object v1, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, loadStringArray(ILjava/util/ArrayList;)V

    .line 128
    return-void
.end method

.method private loadSecProductFeature()V
    .registers 1

    .prologue
    .line 159
    return-void
.end method

.method private loadStringArray(ILjava/util/ArrayList;)V
    .registers 9
    .param p1, "resId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    .local p2, "outArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 133
    sget-object v5, mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_18

    .line 135
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 136
    .local v3, "string":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 139
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "string":Ljava/lang/String;
    :cond_18
    return-void
.end method


# virtual methods
.method public addSamsungHomeLaunchSupportAppList(Ljava/lang/String;)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 80
    sget-object v0, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method protected create()Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;
    .registers 3

    .prologue
    .line 58
    const-string v0, "DualScreenConfigs"

    const-string v1, "DualScreenConfigs :: create()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, mSystemResources:Landroid/content/res/Resources;

    .line 60
    sget-object v0, mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_19

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_19
    invoke-direct {p0}, initConfig()V

    .line 64
    sget-object v0, sInstance:Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, create()Lcom/samsung/android/multidisplay/dualscreen/DualScreenConfigs;

    move-result-object v0

    return-object v0
.end method

.method public getSamsungHomeLaunchSupportAppList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isSamsungHomeLaunchSupportApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pname"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeSamsungHomeLaunchSupportAppList(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 85
    sget-object v1, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 86
    sget-object v1, mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 84
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    :cond_1f
    return-void
.end method
