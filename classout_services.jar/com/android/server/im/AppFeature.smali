.class Lcom/android/server/im/AppFeature;
.super Ljava/lang/Thread;
.source "AppFeature.java"


# static fields
.field public static final DEBUG_ELASTIC:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field mSourceSpecificFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/im/InjectionFeatureInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mTargetSpecificFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/im/InjectionManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -AppFeature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    .line 62
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 64
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 43
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/im/AppFeature;Lcom/android/server/im/InjectionFeatureInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/im/AppFeature;
    .param p1, "x1"    # Lcom/android/server/im/InjectionFeatureInfo;

    .prologue
    .line 43
    invoke-direct {p0, p1}, addToTargetSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V

    return-void
.end method

.method private addToSourceSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V
    .registers 5
    .param p1, "featureInfo"    # Lcom/android/server/im/InjectionFeatureInfo;

    .prologue
    .line 96
    iget-object v1, p0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/im/InjectionFeatureInfo;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 98
    .local v0, "feature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    if-nez v0, :cond_18

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "feature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .restart local v0    # "feature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    iget-object v1, p0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/im/InjectionFeatureInfo;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method private addToTargetSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V
    .registers 8
    .param p1, "featureInfo"    # Lcom/android/server/im/InjectionFeatureInfo;

    .prologue
    .line 67
    iget-object v4, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 70
    .local v0, "feature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-nez v0, :cond_18

    .line 71
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "feature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 72
    .restart local v0    # "feature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    iget-object v4, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_18
    iget-object v4, p1, Lcom/android/server/im/InjectionFeatureInfo;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 77
    .local v1, "featureType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v1, :cond_2c

    .line 78
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "featureType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 79
    .restart local v1    # "featureType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v4, p1, Lcom/android/server/im/InjectionFeatureInfo;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    :cond_2c
    iget-object v4, p1, Lcom/android/server/im/InjectionFeatureInfo;->featureCategory:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 83
    .local v2, "sourceDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_40

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "sourceDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .restart local v2    # "sourceDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/android/server/im/InjectionFeatureInfo;->featureCategory:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_40
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/im/InjectionFeatureInfo;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/im/InjectionFeatureInfo;->sourceClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "sourceInfo":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 93
    :goto_61
    return-void

    .line 91
    :cond_62
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-direct {p0, p1}, addToSourceSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V

    goto :goto_61
.end method

.method private fillPkgList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 16
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 338
    iget-object v10, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v10, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 339
    .local v9, "targetClassMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz v9, :cond_86

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_86

    .line 340
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 341
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_1a
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_86

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 345
    .local v8, "targetClass":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 346
    .local v6, "sourceFeatureCategory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v6, :cond_3e

    .line 349
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, " sourceFeatureCategory null "

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 352
    :cond_3e
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_46
    :goto_46
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 354
    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 355
    .local v7, "sourceFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v7, :cond_62

    .line 358
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, " sourceFeatureList null "

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 361
    :cond_62
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_46

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 363
    .local v1, "feature":Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "featureInfo":[Ljava/lang/String;
    aget-object v10, v2, v12

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_66

    .line 365
    aget-object v10, v2, v12

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 372
    .end local v0    # "category":Ljava/lang/String;
    .end local v1    # "feature":Ljava/lang/String;
    .end local v2    # "featureInfo":[Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "sourceFeatureCategory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v7    # "sourceFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "targetClass":Ljava/lang/String;
    :cond_86
    return-void
.end method


# virtual methods
.method public forceStopTarget(Ljava/lang/String;)V
    .registers 6
    .param p1, "sourcePackage"    # Ljava/lang/String;

    .prologue
    .line 281
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "corePackage to stop :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    if-eqz p1, :cond_2a

    .line 283
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 285
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0, p1}, startCurrentPackage(Ljava/lang/String;)V

    .line 288
    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_2a
    return-void
.end method

.method getCategorisedPackageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "featureCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getCategorisedPackageFeature package ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "activity ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "category ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7d

    .line 111
    iget-object v0, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_75

    .line 112
    iget-object v0, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6c

    .line 114
    iget-object v0, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 128
    :goto_6b
    return-object v0

    .line 118
    :cond_6c
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "category returns null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_73
    const/4 v0, 0x0

    goto :goto_6b

    .line 122
    :cond_75
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "activity returns null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73

    .line 126
    :cond_7d
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "package returns null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73
.end method

.method public getCoreFeaturePkgList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    .local v1, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 323
    invoke-direct {p0, v1, p1}, fillPkgList(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 334
    :cond_10
    :goto_10
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCoreFeaturePkgList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_56

    .end local v1    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_30
    return-object v1

    .line 324
    .restart local v1    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_31
    iget-object v3, p0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 325
    iget-object v3, p0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 327
    .local v0, "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 328
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/im/InjectionFeatureInfo;

    iget-object v2, v3, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    .line 329
    .local v2, "targetPackageName":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, fillPkgList(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_10

    .line 335
    .end local v0    # "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    .end local v2    # "targetPackageName":Ljava/lang/String;
    :cond_56
    const/4 v1, 0x0

    goto :goto_30
.end method

.method public getCorePackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 378
    iget-object v1, p0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 380
    .local v0, "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 381
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/im/InjectionFeatureInfo;

    iget-object v1, v1, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    .line 383
    :goto_19
    return-object v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method getTargetSpecificList()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    return-object v0
.end method

.method public removeFeatureFromList(Ljava/lang/String;)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 141
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Info before "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " removal target ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " \n source ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 144
    .local v5, "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    if-nez v5, :cond_51

    .line 145
    const/16 v16, 0x0

    .line 211
    :goto_50
    return v16

    .line 148
    :cond_51
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v14, "targetPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_165

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/im/InjectionFeatureInfo;

    .line 150
    .local v8, "info":Lcom/android/server/im/InjectionFeatureInfo;
    const/4 v10, 0x0

    .line 151
    .local v10, "removed":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v8, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .line 152
    .local v11, "sourceClassList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    iget-object v0, v8, Lcom/android/server/im/InjectionFeatureInfo;->targetClass:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .line 153
    .local v12, "sourceFeatureCategory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v0, v8, Lcom/android/server/im/InjectionFeatureInfo;->featureCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 155
    .local v13, "sourceFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_cb

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_cb

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_cb

    .line 159
    sget-object v16, TAG:Ljava/lang/String;

    const-string v17, "Remove source package"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v16, v0

    iget-object v0, v8, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    if-eqz v16, :cond_cb

    .line 161
    const/4 v10, 0x1

    .line 165
    :cond_cb
    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_ee

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_ee

    .line 168
    sget-object v16, TAG:Ljava/lang/String;

    const-string v17, "Remove activity "

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/4 v10, 0x1

    .line 173
    :cond_ee
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10f

    .line 175
    sget-object v16, TAG:Ljava/lang/String;

    const-string v17, "Remove Feature category"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const/4 v10, 0x1

    .line 181
    :cond_10f
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v9, "removalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_118
    :goto_118
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_145

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 183
    .local v4, "featureInfo":Ljava/lang/String;
    const-string v16, "#"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "feature":[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v16, v3, v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_118

    .line 186
    sget-object v16, TAG:Ljava/lang/String;

    const-string v17, "Remove Feature"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_118

    .line 194
    .end local v3    # "feature":[Ljava/lang/String;
    .end local v4    # "featureInfo":Ljava/lang/String;
    :cond_145
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_149
    :goto_149
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_5a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 195
    .restart local v4    # "featureInfo":Ljava/lang/String;
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v10

    .line 196
    if-eqz v10, :cond_149

    .line 197
    iget-object v0, v8, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_149

    .line 202
    .end local v4    # "featureInfo":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "info":Lcom/android/server/im/InjectionFeatureInfo;
    .end local v9    # "removalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "removed":Z
    .end local v11    # "sourceClassList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v12    # "sourceFeatureCategory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v13    # "sourceFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_165
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v17, "activity"

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 203
    .local v2, "am":Landroid/app/ActivityManager;
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_177
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_18c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 204
    .local v15, "targetProcess":Ljava/lang/String;
    invoke-virtual {v2, v15}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, startCurrentPackage(Ljava/lang/String;)V

    goto :goto_177

    .line 208
    .end local v15    # "targetProcess":Ljava/lang/String;
    :cond_18c
    move-object/from16 v0, p0

    iget-object v0, v0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " Info after "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " removal target ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mTargetSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " \n source ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, mSourceSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v16, 0x1

    goto/16 :goto_50
.end method

.method public run()V
    .registers 5

    .prologue
    .line 228
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App Feature run thread id ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 230
    new-instance v0, Lcom/android/server/im/AppFeature$1;

    invoke-direct {v0, p0}, Lcom/android/server/im/AppFeature$1;-><init>(Lcom/android/server/im/AppFeature;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 272
    iget-object v0, p0, mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 273
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 274
    return-void
.end method

.method public startCurrentPackage(Ljava/lang/String;)V
    .registers 11
    .param p1, "sourcePackage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 294
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 295
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .line 296
    .local v5, "taskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v4, ""

    .line 297
    .local v4, "packageName1":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 298
    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_31

    .line 299
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 301
    :cond_31
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_55

    const-string v6, "com.example.weee"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    .line 303
    :cond_55
    :try_start_55
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 304
    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_6b

    .line 305
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6b
    .catch Landroid/content/ActivityNotFoundException; {:try_start_55 .. :try_end_6b} :catch_6c

    .line 313
    .end local v2    # "i":Landroid/content/Intent;
    :cond_6b
    :goto_6b
    return-void

    .line 309
    :catch_6c
    move-exception v1

    .line 310
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_6b
.end method
