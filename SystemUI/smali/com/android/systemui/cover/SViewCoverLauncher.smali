.class public Lcom/android/systemui/cover/SViewCoverLauncher;
.super Ljava/lang/Object;
.source "SViewCoverLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    }
.end annotation


# static fields
.field private static sCoverBaseClass:Ljava/lang/Class;

.field private static sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

.field private static sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

.field private static sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

.field private static sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

.field private static sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;

.field private static sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

.field private static sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

.field private static sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

.field private static sUserActivityMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

.field private mSViewCoverBase:Ljava/lang/Object;

.field private mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    .line 39
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    .line 40
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    .line 41
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    .line 42
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    .line 43
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    .line 44
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    .line 45
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    .line 46
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    .line 47
    sput-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rootView"    # Landroid/widget/FrameLayout;
    .param p3, "previewRootView"    # Landroid/widget/FrameLayout;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    .line 285
    new-instance v4, Lcom/android/systemui/cover/SViewCoverLauncher$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/cover/SViewCoverLauncher$1;-><init>(Lcom/android/systemui/cover/SViewCoverLauncher;)V

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverLauncher;->isAnyEmptyReflection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/cover/SViewCoverLauncher;->loadReflections()V

    .line 56
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v4, :cond_1

    .line 58
    const/4 v4, 0x3

    :try_start_0
    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    .line 62
    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v4, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    .end local v3    # "parameters":[Ljava/lang/Object;
    :cond_1
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SViewCoverLauncher IllegalAccessException encountered invoking constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v1    # "illAccEx":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v2

    .line 66
    .local v2, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SViewCoverLauncher InvocationTargetException encountered invoking constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    .end local v2    # "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v0

    .line 68
    .local v0, "ctorEx":Ljava/lang/InstantiationException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SViewCoverLauncher Unable to instantiate constructor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/cover/SViewCoverLauncher;)Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/cover/SViewCoverLauncher;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    return-object v0
.end method

.method private isAnyEmptyReflection()Z
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadReflections()V
    .locals 6

    .prologue
    .line 86
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Load reflections"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_0
    const-string v3, "com.sec.android.cover.CoverViewMediator"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    .line 90
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    if-nez v3, :cond_0

    .line 91
    const-string v3, "SViewCoverLauncher"

    const-string v4, "There\'s no cover base class"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/widget/FrameLayout;

    aput-object v4, v2, v3

    .line 98
    .local v2, "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClassConstructor:Ljava/lang/reflect/Constructor;

    .line 100
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Lcom/samsung/android/cover/CoverState;

    aput-object v4, v2, v3

    .line 103
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "updateCoverState"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    .line 105
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 108
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "onCoverAppCovered"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    .line 110
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 113
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "onStatusBarStateChanged"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    .line 115
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 118
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "showCoverOpenPopup"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    .line 120
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    .line 123
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "setCoverUiAlpha"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetCoverUiAlphaMethod:Ljava/lang/reflect/Method;

    .line 125
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "userActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUserActivityMethod:Ljava/lang/reflect/Method;

    .line 126
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "showCoverOpenPopup"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    .line 128
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    .end local v2    # "paramTypes":[Ljava/lang/Class;
    const/4 v3, 0x0

    const-class v4, Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    aput-object v4, v2, v3

    .line 131
    .restart local v2    # "paramTypes":[Ljava/lang/Class;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sCoverBaseClass:Ljava/lang/Class;

    const-string v4, "setShortcutAppOpenCallback"

    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 132
    .end local v2    # "paramTypes":[Ljava/lang/Class;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "cnfEx":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher Unable to instantiate class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 134
    .end local v0    # "cnfEx":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 135
    .local v1, "nsmEx":Ljava/lang/NoSuchMethodException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher No method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 6
    .param p1, "covered"    # Z

    .prologue
    .line 246
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 247
    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke onCoverAppCovered."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    return-void

    .line 252
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 256
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnCoverAppCoveredMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 257
    .end local v2    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking onCoverAppCovered"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    .end local v0    # "illAccEx":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 260
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking onCoverAppCovered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStatusBarStateChanged(I)V
    .locals 6
    .param p1, "statusBarState"    # I

    .prologue
    .line 159
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 160
    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke onStatusBarStateChanged."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 169
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sOnStatusBarStateChangedMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 170
    .end local v2    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking onStatusBarStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 172
    .end local v0    # "illAccEx":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 173
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking onStatusBarStateChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setShortcutAppOpenCallback(Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;)V
    .locals 6
    .param p1, "starter"    # Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mStatusBarCoverShortcutOpen:Lcom/android/systemui/cover/SViewCoverLauncher$StatusBarCoverShortcutOpen;

    .line 266
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 267
    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke sSetShortcutAppOpenCallback."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    return-void

    .line 272
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mCoverShortcutOpen:Lcom/sec/android/cover/sviewcover/SViewCoverShortcutManager$CoverShortcutOpen;

    aput-object v4, v2, v3

    .line 276
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sSetShortcutAppOpenCallback:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 277
    .end local v2    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 278
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking sSetShortcutAppOpenCallback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 279
    .end local v0    # "illAccEx":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 280
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking sSetShortcutAppOpenCallback "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCoverOpenPopup()V
    .locals 5

    .prologue
    .line 193
    iget-object v2, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 194
    :cond_0
    const-string v2, "SViewCoverLauncher"

    const-string v3, "Cannot invoke showCoverOpenPopup."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return-void

    .line 199
    :cond_1
    :try_start_0
    sget-object v2, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SViewCoverLauncher IllegalAccessException encountered invoking showCoverOpenPopup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    .end local v0    # "illAccEx":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SViewCoverLauncher InvocationTargetException encountered invoking showCoverOpenPopup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showCoverOpenPopup(Ljava/lang/String;)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 208
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 209
    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke showCoverOpenPopup."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 214
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 218
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sShowCoverOpenPopupStringMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 219
    .end local v2    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 220
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking showCoverOpenPopup string"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    .end local v0    # "illAccEx":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 222
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking showCoverOpenPopup string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 140
    iget-object v3, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    if-nez v3, :cond_1

    .line 141
    :cond_0
    const-string v3, "SViewCoverLauncher"

    const-string v4, "Cannot invoke updateCoverState."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    return-void

    .line 146
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 150
    .local v2, "params":[Ljava/lang/Object;
    sget-object v3, Lcom/android/systemui/cover/SViewCoverLauncher;->sUpdateCoverStateMethod:Ljava/lang/reflect/Method;

    iget-object v4, p0, Lcom/android/systemui/cover/SViewCoverLauncher;->mSViewCoverBase:Ljava/lang/Object;

    invoke-virtual {v3, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 151
    .end local v2    # "params":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 152
    .local v0, "illAccEx":Ljava/lang/IllegalAccessException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher IllegalAccessException encountered invoking updateCoverState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0    # "illAccEx":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 154
    .local v1, "invokeTargetEx":Ljava/lang/reflect/InvocationTargetException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SViewCoverLauncher InvocationTargetException encountered invoking updateCoverState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
