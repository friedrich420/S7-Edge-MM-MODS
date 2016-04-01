.class public Lcom/samsung/android/multidisplay/common/ContextRelationManager;
.super Ljava/lang/Object;
.source "ContextRelationManager.java"


# static fields
.field static final BOTTOM_OF_CALL_STACK_MESSAGE:Ljava/lang/String; = "<bottom of call stack>"

.field public static final DEBUG:Z

.field public static final DEBUG_VERBOSE:Z

.field static final DISPATCH_MESSAGE_METHOD:Ljava/lang/String; = "android.os.Handler.dispatchMessage"

.field public static final DUMP_DETAIL:Z

.field public static FEATURE_ENABLED:Z = false

.field public static final TAG:Ljava/lang/String; = "ContextRelationManager"

.field public static final TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

.field private static mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

.field private static final sInstance:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Lcom/samsung/android/multidisplay/common/ContextRelationManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContextRelatedInstanceHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    sget-boolean v0, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v0, :cond_6

    :cond_6
    sput-boolean v2, DEBUG:Z

    .line 59
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_29

    move v0, v1

    :goto_d
    sput-boolean v0, DUMP_DETAIL:Z

    .line 60
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_14

    move v2, v1

    :cond_14
    sput-boolean v2, DEBUG_VERBOSE:Z

    .line 62
    sput-boolean v1, FEATURE_ENABLED:Z

    .line 63
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    .line 71
    new-instance v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager$1;-><init>()V

    sput-object v0, sInstance:Landroid/util/Singleton;

    return-void

    :cond_29
    move v0, v2

    .line 59
    goto :goto_d
.end method

.method private constructor <init>()V
    .registers 5

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    .line 82
    new-instance v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    invoke-direct {v1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;-><init>()V

    sput-object v1, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    .line 83
    iget-object v1, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v2, Landroid/view/WindowManagerImpl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceHandler;

    invoke-direct {v3}, Lcom/samsung/android/multidisplay/common/datastructure/WindowManagerImplInstanceHandler;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v2, Landroid/view/Display;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;

    invoke-direct {v3}, Lcom/samsung/android/multidisplay/common/datastructure/DisplayInstanceHandler;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v2, Landroid/content/res/Resources;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceHandler;

    invoke-direct {v3}, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceHandler;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    .line 88
    .local v0, "at":Landroid/app/ActivityThread;
    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/app/ActivityThread;->isSystemThread()Z

    move-result v1

    if-eqz v1, :cond_50

    .line 89
    const/4 v1, 0x0

    sput-boolean v1, FEATURE_ENABLED:Z

    .line 91
    :cond_50
    const-string v1, "ContextRelationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ContextRelationManager() : FEATURE_ENABLED="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, FEATURE_ENABLED:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/multidisplay/common/ContextRelationManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/samsung/android/multidisplay/common/ContextRelationManager$1;

    .prologue
    .line 56
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static getImpl(Landroid/content/Context;)Landroid/content/Context;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "repeatCount":I
    :goto_2
    instance-of v2, p0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_77

    move-object v2, p0

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "nextContext":Landroid/content/Context;
    if-eqz v0, :cond_77

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 305
    if-ne p0, v0, :cond_78

    .line 306
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_1e

    .line 307
    const-string v2, "ContextRelationManager"

    const-string v4, "cannot get ContextImpl. (context has itself as a base context)"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_1e
    sget-boolean v2, DEBUG_VERBOSE:Z

    if-eqz v2, :cond_76

    .line 310
    const-string v2, "ContextRelationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImpl() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    const-string v2, "ContextRelationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImpl() super "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v2, "ContextRelationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getImpl() nextContext : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    move-object p0, v3

    .line 324
    .end local v0    # "nextContext":Landroid/content/Context;
    .end local p0    # "context":Landroid/content/Context;
    :cond_77
    :goto_77
    return-object p0

    .line 316
    .restart local v0    # "nextContext":Landroid/content/Context;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_78
    const/4 v2, 0x5

    if-le v1, v2, :cond_88

    .line 317
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_86

    .line 318
    const-string v2, "ContextRelationManager"

    const-string v4, "getImpl() cannot get ContextImpl. (too many repeat)"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    move-object p0, v3

    .line 320
    goto :goto_77

    .line 322
    :cond_88
    move-object p0, v0

    goto/16 :goto_2
.end method

.method public static getInstance()Lcom/samsung/android/multidisplay/common/ContextRelationManager;
    .registers 1

    .prologue
    .line 78
    sget-object v0, sInstance:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    return-object v0
.end method

.method public static trimCallStack(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "callStack"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 275
    const-string v3, ""

    .line 276
    .local v3, "ret":Ljava/lang/String;
    if-nez p0, :cond_7

    move-object v4, v3

    .line 296
    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    :goto_6
    return-object v4

    .line 279
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_7
    const-string v6, "android.os.Handler.dispatchMessage"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 280
    .local v0, "keywordIndex":I
    if-gez v0, :cond_1d

    .line 281
    const-string v6, "<bottom of call stack>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 282
    if-gez v0, :cond_1d

    .line 283
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .line 286
    :cond_1d
    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "keywordTrimedString":Ljava/lang/String;
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 288
    .local v2, "newlineIndex":I
    if-ltz v2, :cond_32

    .line 290
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "spaceTrimedString":Ljava/lang/String;
    move-object v3, v5

    .end local v5    # "spaceTrimedString":Ljava/lang/String;
    :goto_30
    move-object v4, v3

    .line 296
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    goto :goto_6

    .line 294
    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :cond_32
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_30
.end method


# virtual methods
.method public createContext(Landroid/content/Context;Landroid/content/Context;)V
    .registers 10
    .param p1, "creator"    # Landroid/content/Context;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget-boolean v5, FEATURE_ENABLED:Z

    if-nez v5, :cond_5

    .line 117
    :goto_4
    return-void

    .line 100
    :cond_5
    if-nez p2, :cond_f

    .line 101
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "context is null"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 103
    :cond_f
    const/4 v3, 0x0

    .line 104
    .local v3, "parentContext":Landroid/content/Context;
    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    .line 105
    .local v2, "creatorDisplayId":I
    :goto_16
    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 107
    .local v0, "contextDisplayId":I
    if-ltz v2, :cond_1f

    if-ne v2, v0, :cond_1f

    .line 109
    move-object v3, p1

    .line 112
    :cond_1f
    invoke-static {v3}, getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    .line 113
    .local v4, "parentImpl":Landroid/content/Context;
    invoke-static {p2}, getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 114
    .local v1, "contextImpl":Landroid/content/Context;
    sget-object v6, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    monitor-enter v6

    .line 115
    :try_start_2a
    sget-object v5, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    invoke-virtual {v5, v4, v1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->createContext(Landroid/content/Context;Landroid/content/Context;)Z

    .line 116
    monitor-exit v6

    goto :goto_4

    :catchall_31
    move-exception v5

    monitor-exit v6
    :try_end_33
    .catchall {:try_start_2a .. :try_end_33} :catchall_31

    throw v5

    .line 104
    .end local v0    # "contextDisplayId":I
    .end local v1    # "contextImpl":Landroid/content/Context;
    .end local v2    # "creatorDisplayId":I
    .end local v4    # "parentImpl":Landroid/content/Context;
    :cond_34
    const/4 v2, -0x1

    goto :goto_16
.end method

.method public createDisplay(Landroid/content/Context;Landroid/view/Display;)V
    .registers 7
    .param p1, "creator"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .prologue
    .line 161
    sget-boolean v2, FEATURE_ENABLED:Z

    if-nez v2, :cond_5

    .line 180
    :cond_4
    :goto_4
    return-void

    .line 164
    :cond_5
    if-nez p1, :cond_f

    .line 165
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "creator is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 166
    :cond_f
    if-nez p2, :cond_19

    .line 167
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "display is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 169
    :cond_19
    invoke-static {p1}, getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "creatorImpl":Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 173
    iget-object v2, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v3, Landroid/view/Display;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;

    .line 175
    .local v1, "instanceHandler":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
    if-eqz v1, :cond_4

    .line 176
    monitor-enter v1

    .line 177
    :try_start_30
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;->createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z

    .line 178
    monitor-exit v1

    goto :goto_4

    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public createResources(Landroid/content/Context;Landroid/content/res/Resources;)V
    .registers 7
    .param p1, "creator"    # Landroid/content/Context;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 183
    sget-boolean v2, FEATURE_ENABLED:Z

    if-nez v2, :cond_5

    .line 202
    :cond_4
    :goto_4
    return-void

    .line 186
    :cond_5
    if-nez p1, :cond_f

    .line 187
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "creator is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 188
    :cond_f
    if-nez p2, :cond_1a

    .line 189
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "res is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 191
    :cond_1a
    invoke-static {p1}, getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, "creatorImpl":Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 195
    iget-object v2, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v3, Landroid/content/res/Resources;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;

    .line 197
    .local v1, "instanceHandler":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
    if-eqz v1, :cond_4

    .line 198
    monitor-enter v1

    .line 199
    :try_start_31
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;->createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z

    .line 200
    monitor-exit v1

    goto :goto_4

    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public createWindowManager(Landroid/content/Context;Landroid/view/WindowManagerImpl;)V
    .registers 7
    .param p1, "creator"    # Landroid/content/Context;
    .param p2, "wm"    # Landroid/view/WindowManagerImpl;

    .prologue
    .line 139
    sget-boolean v2, FEATURE_ENABLED:Z

    if-nez v2, :cond_5

    .line 158
    :cond_4
    :goto_4
    return-void

    .line 142
    :cond_5
    if-nez p1, :cond_f

    .line 143
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "creator is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_f
    if-nez p2, :cond_1a

    .line 145
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "wm is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_1a
    invoke-static {p1}, getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 148
    .local v0, "creatorImpl":Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 151
    iget-object v2, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    const-class v3, Landroid/view/WindowManagerImpl;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;

    .line 153
    .local v1, "instanceHandler":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
    if-eqz v1, :cond_4

    .line 154
    monitor-enter v1

    .line 155
    :try_start_31
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;->createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z

    .line 156
    monitor-exit v1

    goto :goto_4

    :catchall_36
    move-exception v2

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_36

    throw v2
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpDetail"    # Z
    .param p4, "dumpCallStack"    # Z

    .prologue
    .line 249
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 250
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lcom/samsung/android/multidisplay/common/ContextRelationManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 253
    const-string v3, "Context Ref. size="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, getContextRefSize()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 255
    sget-object v4, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    monitor-enter v4

    .line 256
    :try_start_44
    sget-object v3, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    invoke-virtual {v3, p1, v0, p3, p4}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    .line 257
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_7a

    .line 258
    iget-object v4, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    monitor-enter v4

    .line 259
    :try_start_4d
    iget-object v3, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 260
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_57
    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 261
    iget-object v3, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;

    .line 263
    .local v1, "instanceHandler":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
    if-eqz v1, :cond_57

    .line 264
    monitor-enter v1
    :try_end_6c
    .catchall {:try_start_4d .. :try_end_6c} :catchall_77

    .line 265
    :try_start_6c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 266
    invoke-virtual {v1, p1, v0, p3, p4}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V

    .line 267
    monitor-exit v1

    goto :goto_57

    :catchall_74
    move-exception v3

    monitor-exit v1
    :try_end_76
    .catchall {:try_start_6c .. :try_end_76} :catchall_74

    :try_start_76
    throw v3

    .line 270
    .end local v1    # "instanceHandler":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_77
    move-exception v3

    monitor-exit v4
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_77

    throw v3

    .line 257
    :catchall_7a
    move-exception v3

    :try_start_7b
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_7a

    throw v3

    .line 270
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7d
    :try_start_7d
    monitor-exit v4
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_77

    .line 271
    return-void
.end method

.method public getContextRefSize()I
    .registers 3

    .prologue
    .line 243
    sget-object v1, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    monitor-enter v1

    .line 244
    :try_start_3
    sget-object v0, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->getRelationGraph()Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/RelationGraph;->getGraph()Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/multidisplay/common/datastructure/graph/Graph;->numVertices()I

    move-result v0

    monitor-exit v1

    return v0

    .line 245
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public propagateChangedContextDisplay(Landroid/content/Context;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayId"    # I

    .prologue
    .line 205
    sget-boolean v3, FEATURE_ENABLED:Z

    if-nez v3, :cond_5

    .line 240
    :cond_4
    :goto_4
    return-void

    .line 208
    :cond_5
    if-eqz p1, :cond_4

    .line 212
    sget-object v4, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    monitor-enter v4

    .line 213
    :try_start_a
    sget-boolean v3, DEBUG_VERBOSE:Z

    if-eqz v3, :cond_46

    .line 214
    const-string v3, "ContextRelationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "propagate new display to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    invoke-virtual {v6, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". new displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_46
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v3

    if-ne v3, p2, :cond_5d

    .line 218
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_58

    .line 219
    const-string v3, "ContextRelationManager"

    const-string/jumbo v5, "stop propagating display to a Context has same displayId"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_58
    monitor-exit v4

    goto :goto_4

    .line 239
    :catchall_5a
    move-exception v3

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_a .. :try_end_5c} :catchall_5a

    throw v3

    .line 223
    :cond_5d
    :try_start_5d
    sget-object v3, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    invoke-virtual {v3, p1, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->propagateChangedDisplay(Landroid/content/Context;I)V

    .line 224
    sget-object v3, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    invoke-virtual {v3, p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->getDescendantVertices(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 226
    .local v0, "contextDescendant":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/Context;>;"
    iget-object v5, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_5a

    .line 227
    :try_start_6b
    iget-object v3, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 228
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_75
    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 229
    iget-object v3, p0, mContextRelatedInstanceHandlers:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;

    .line 231
    .local v1, "instanceHandler":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
    if-eqz v1, :cond_75

    .line 232
    monitor-enter v1
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_92

    .line 233
    :try_start_8a
    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;->propagateChangedRelationInfo(Ljava/util/ArrayList;I)V

    .line 235
    monitor-exit v1

    goto :goto_75

    :catchall_8f
    move-exception v3

    monitor-exit v1
    :try_end_91
    .catchall {:try_start_8a .. :try_end_91} :catchall_8f

    :try_start_91
    throw v3

    .line 238
    .end local v1    # "instanceHandler":Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstanceHandler;
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_92
    move-exception v3

    monitor-exit v5
    :try_end_94
    .catchall {:try_start_91 .. :try_end_94} :catchall_92

    :try_start_94
    throw v3
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_5a

    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_95
    :try_start_95
    monitor-exit v5
    :try_end_96
    .catchall {:try_start_95 .. :try_end_96} :catchall_92

    .line 239
    :try_start_96
    monitor-exit v4
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_5a

    goto/16 :goto_4
.end method

.method public removeContext(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    sget-boolean v1, FEATURE_ENABLED:Z

    if-nez v1, :cond_5

    .line 136
    :cond_4
    :goto_4
    return-void

    .line 125
    :cond_5
    if-nez p1, :cond_f

    .line 126
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "context is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    :cond_f
    invoke-static {p1}, getImpl(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, "contextImpl":Landroid/content/Context;
    if-eqz v0, :cond_4

    .line 133
    sget-object v2, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    monitor-enter v2

    .line 134
    :try_start_18
    sget-object v1, mContextRelationGraph:Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/multidisplay/common/datastructure/ContextRelationGraph;->removeContext(Landroid/content/Context;)Z

    .line 135
    monitor-exit v2

    goto :goto_4

    :catchall_1f
    move-exception v1

    monitor-exit v2
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw v1
.end method
