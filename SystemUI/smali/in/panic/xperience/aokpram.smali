.class public Lin/panic/xperience/aokpram;
.super Landroid/widget/FrameLayout;
.source "aokpram.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lin/panic/xperience/aokpram$100000000;,
        Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;
    }
.end annotation


# static fields
.field static final PAGE_SIZE:J = 0x1000L

.field private static mAm:Landroid/app/ActivityManager;

.field private static mBackgroundProcessText:Landroid/widget/TextView;

.field private static mForegroundProcessText:Landroid/widget/TextView;

.field private static mGbContext:Landroid/content/Context;

.field private static mMemInfoReader:Lin/panic/xperience/MemInfoReader;

.field private static mRamUsageBar:Lin/panic/xperience/LinearColorBar;


# instance fields
.field private dedi:I

.field private dedi2:I

.field private dedi3:I

.field private dedi4:I

.field private dedi5:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    .prologue
    .line 44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    move-object v10, v0

    move-object v3, v10

    .line 46
    new-instance v10, Lin/panic/xperience/MemInfoReader;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Lin/panic/xperience/MemInfoReader;-><init>()V

    sput-object v10, Lin/panic/xperience/aokpram;->mMemInfoReader:Lin/panic/xperience/MemInfoReader;

    .line 47
    move-object v10, v0

    invoke-direct {v10}, Lin/panic/xperience/aokpram;->setupExternalSettingsObserver()V

    .line 48
    new-instance v10, Lin/panic/xperience/LinearColorBar;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Lin/panic/xperience/LinearColorBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sput-object v10, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    .line 50
    sget-object v10, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lin/panic/xperience/LinearColorBar;->setOrientation(I)V

    .line 51
    sget-object v10, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lin/panic/xperience/LinearColorBar;->setClipChildren(Z)V

    .line 52
    sget-object v10, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lin/panic/xperience/LinearColorBar;->setClipToPadding(Z)V

    .line 53
    sget-object v10, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v11, v12, v13, v14}, Lin/panic/xperience/LinearColorBar;->setPadding(IIII)V

    .line 54
    new-instance v10, Landroid/widget/FrameLayout$LayoutParams;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v6, v10

    .line 56
    sget-object v10, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    move-object v11, v6

    invoke-virtual {v10, v11}, Lin/panic/xperience/LinearColorBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "ram"

    const-string v13, "layout"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lin/panic/xperience/aokpram;->dedi:I

    .line 58
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "foregroundText"

    const-string v13, "id"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lin/panic/xperience/aokpram;->dedi2:I

    .line 59
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "backgroundText"

    const-string v13, "id"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lin/panic/xperience/aokpram;->dedi3:I

    .line 60
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "service_foreground_processes"

    const-string v13, "string"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lin/panic/xperience/aokpram;->dedi4:I

    .line 61
    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "service_background_processes"

    const-string v13, "string"

    move-object v14, v1

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    iput v11, v10, Lin/panic/xperience/aokpram;->dedi5:I

    .line 63
    move-object v10, v1

    invoke-static {v10}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    move-object v7, v10

    .line 64
    move-object v10, v7

    move-object v11, v0

    iget v11, v11, Lin/panic/xperience/aokpram;->dedi:I

    sget-object v12, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 65
    move-object v10, v3

    sget-object v11, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    invoke-virtual {v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 66
    sget-object v10, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    move-object v11, v0

    iget v11, v11, Lin/panic/xperience/aokpram;->dedi2:I

    invoke-virtual {v10, v11}, Lin/panic/xperience/LinearColorBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sput-object v10, Lin/panic/xperience/aokpram;->mForegroundProcessText:Landroid/widget/TextView;

    .line 67
    sget-object v10, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    move-object v11, v0

    iget v11, v11, Lin/panic/xperience/aokpram;->dedi3:I

    invoke-virtual {v10, v11}, Lin/panic/xperience/LinearColorBar;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sput-object v10, Lin/panic/xperience/aokpram;->mBackgroundProcessText:Landroid/widget/TextView;

    .line 68
    move-object v10, v1

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager;

    sput-object v10, Lin/panic/xperience/aokpram;->mAm:Landroid/app/ActivityManager;

    .line 70
    new-instance v10, Landroid/os/Handler;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    move-object v8, v10

    .line 71
    move-object v10, v8

    new-instance v11, Lin/panic/xperience/aokpram$100000000;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lin/panic/xperience/aokpram$100000000;-><init>(Lin/panic/xperience/aokpram;Landroid/os/Handler;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v10

    return-void
.end method

.method static synthetic access$L1000000()Landroid/widget/TextView;
    .locals 3

    sget-object v2, Lin/panic/xperience/aokpram;->mBackgroundProcessText:Landroid/widget/TextView;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000001()Landroid/widget/TextView;
    .locals 3

    sget-object v2, Lin/panic/xperience/aokpram;->mForegroundProcessText:Landroid/widget/TextView;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000002()Landroid/app/ActivityManager;
    .locals 3

    sget-object v2, Lin/panic/xperience/aokpram;->mAm:Landroid/app/ActivityManager;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000003()Lin/panic/xperience/MemInfoReader;
    .locals 3

    sget-object v2, Lin/panic/xperience/aokpram;->mMemInfoReader:Lin/panic/xperience/MemInfoReader;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000005()Lin/panic/xperience/LinearColorBar;
    .locals 3

    sget-object v2, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$L1000009(Lin/panic/xperience/aokpram;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lin/panic/xperience/aokpram;->dedi4:I

    move v0, v3

    return v0
.end method

.method static synthetic access$L1000010(Lin/panic/xperience/aokpram;)I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lin/panic/xperience/aokpram;->dedi5:I

    move v0, v3

    return v0
.end method

.method static synthetic access$Landroid$view$View$124(Lin/panic/xperience/aokpram;)Landroid/content/Context;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Landroid/widget/TextView;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lin/panic/xperience/aokpram;->mBackgroundProcessText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000001(Landroid/widget/TextView;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lin/panic/xperience/aokpram;->mForegroundProcessText:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic access$S1000002(Landroid/app/ActivityManager;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lin/panic/xperience/aokpram;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$S1000003(Lin/panic/xperience/MemInfoReader;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lin/panic/xperience/aokpram;->mMemInfoReader:Lin/panic/xperience/MemInfoReader;

    return-void
.end method

.method static synthetic access$S1000005(Lin/panic/xperience/LinearColorBar;)V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    sput-object v3, Lin/panic/xperience/aokpram;->mRamUsageBar:Lin/panic/xperience/LinearColorBar;

    return-void
.end method

.method static synthetic access$S1000009(Lin/panic/xperience/aokpram;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lin/panic/xperience/aokpram;->dedi4:I

    return-void
.end method

.method static synthetic access$S1000010(Lin/panic/xperience/aokpram;I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput v5, v4, Lin/panic/xperience/aokpram;->dedi5:I

    return-void
.end method

.method static synthetic access$Sandroid$view$View$124(Lin/panic/xperience/aokpram;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Landroid/view/View;->mContext:Landroid/content/Context;

    return-void
.end method

.method private ngumpet()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 134
    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "aokpram"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    move v1, v3

    .line 135
    move v3, v1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 136
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lin/panic/xperience/aokpram;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lin/panic/xperience/aokpram;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupExternalSettingsObserver()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 101
    move-object v0, p0

    new-instance v4, Ljava/util/LinkedList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v4

    .line 104
    move-object v4, v1

    new-instance v5, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lin/panic/xperience/aokpram;->getHandler()Landroid/os/Handler;

    move-result-object v8

    const-string v9, "aokpram"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;-><init>(Lin/panic/xperience/aokpram;Landroid/os/Handler;Landroid/net/Uri;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 107
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .line 108
    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 111
    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;

    invoke-virtual {v4}, Lin/panic/xperience/aokpram$MyExternalPreferencesObserver;->observe()V

    goto :goto_0
.end method


# virtual methods
.method public externalPreferencesObserverCallback(Landroid/net/Uri;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string v4, "aokpram"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    move-object v3, v0

    invoke-direct {v3}, Lin/panic/xperience/aokpram;->ngumpet()V

    .line 127
    :goto_0
    return-void

    :cond_0
    goto :goto_0
.end method
