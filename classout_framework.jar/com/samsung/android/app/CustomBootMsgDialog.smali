.class public Lcom/samsung/android/app/CustomBootMsgDialog;
.super Landroid/app/Dialog;
.source "CustomBootMsgDialog.java"


# static fields
.field private static final RESET_BIG_GEAR_DEGREE:I = 0x384


# instance fields
.field final TAG:Ljava/lang/String;

.field private mAnimationRunnable:Ljava/lang/Runnable;

.field private mAnimationRunning:Z

.field private mBigGear:Landroid/view/View;

.field mCurrent:I

.field private mHandler:Landroid/os/Handler;

.field mMax:I

.field private mPreviousTime:J

.field mProgressBar:Landroid/widget/ProgressBar;

.field private mSmallGear:Landroid/view/View;

.field mUpgradeProgressMsg:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "title_id"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 73
    const v4, 0x103000e

    invoke-direct {p0, p1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 29
    const-string v4, "CustomBootMsgDialog"

    iput-object v4, p0, TAG:Ljava/lang/String;

    .line 31
    iput-object v6, p0, mUpgradeProgressMsg:Landroid/widget/TextView;

    .line 33
    iput-object v6, p0, mProgressBar:Landroid/widget/ProgressBar;

    .line 35
    iput v5, p0, mMax:I

    iput v5, p0, mCurrent:I

    .line 38
    iput-boolean v5, p0, mAnimationRunning:Z

    .line 42
    new-instance v4, Lcom/samsung/android/app/CustomBootMsgDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$1;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V

    iput-object v4, p0, mAnimationRunnable:Ljava/lang/Runnable;

    .line 75
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 77
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x7e5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 78
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x500

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 80
    const/4 v4, 0x5

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 81
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 82
    iput v7, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 83
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 86
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x109015c

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 87
    .local v3, "v":Landroid/view/View;
    const v4, 0x10204d2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 88
    .local v2, "title":Landroid/widget/TextView;
    const v4, 0x10204d3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, mUpgradeProgressMsg:Landroid/widget/TextView;

    .line 90
    const v4, 0x10204d4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, mProgressBar:Landroid/widget/ProgressBar;

    .line 93
    const v4, 0x10204d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, mBigGear:Landroid/view/View;

    .line 94
    const v4, 0x10204d1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, mSmallGear:Landroid/view/View;

    .line 95
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, mHandler:Landroid/os/Handler;

    .line 97
    iget-object v4, p0, mBigGear:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/app/CustomBootMsgDialog$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/app/CustomBootMsgDialog$2;-><init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0, v3}, setContentView(Landroid/view/View;)V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-object v0, p0, mBigGear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-object v0, p0, mSmallGear:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/CustomBootMsgDialog;)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-wide v0, p0, mPreviousTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/CustomBootMsgDialog;J)J
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, mPreviousTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/CustomBootMsgDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-boolean v0, p0, mAnimationRunning:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/android/app/CustomBootMsgDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/app/CustomBootMsgDialog;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-object v0, p0, mAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/app/CustomBootMsgDialog;

    .prologue
    .line 28
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private parseDigit(Ljava/lang/String;)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "current_max_index":I
    const/4 v4, 0x0

    .line 163
    .local v4, "temp_digit":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v3, "min_max":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2f

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 167
    .local v1, "digit":C
    const/16 v5, 0x30

    if-gt v5, v1, :cond_22

    const/16 v5, 0x39

    if-gt v1, v5, :cond_22

    .line 168
    mul-int/lit8 v5, v4, 0xa

    add-int/2addr v5, v1

    add-int/lit8 v4, v5, -0x30

    .line 165
    :goto_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 170
    :cond_22
    if-eqz v4, :cond_2d

    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    .line 174
    :cond_2d
    const/4 v4, 0x0

    goto :goto_1f

    .line 178
    .end local v1    # "digit":C
    :cond_2f
    const/4 v4, 0x0

    .line 179
    const/4 v2, 0x0

    :goto_31
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_7b

    .line 180
    if-nez v4, :cond_46

    .line 181
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 179
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 183
    :cond_46
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_65

    move v5, v4

    :goto_53
    iput v5, p0, mMax:I

    .line 184
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-gt v4, v5, :cond_70

    move v5, v4

    :goto_62
    iput v5, p0, mCurrent:I

    goto :goto_43

    .line 183
    :cond_65
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_53

    .line 184
    :cond_70
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_62

    .line 187
    :cond_7b
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 3

    .prologue
    .line 123
    const-string v0, "CustomBootMsgDialog"

    const-string v1, "dismiss CustomBootMsg "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, mAnimationRunning:Z

    .line 127
    iget-object v0, p0, mBigGear:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 128
    iget-object v0, p0, mBigGear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 131
    :cond_13
    iget-object v0, p0, mSmallGear:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 132
    iget-object v0, p0, mSmallGear:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 135
    :cond_1c
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 136
    return-void
.end method

.method public setProgress(Ljava/lang/String;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    .line 142
    const-string v0, "CustomBootMsgDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Booting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    if-nez p1, :cond_22

    .line 144
    iget-object v0, p0, mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 158
    :goto_21
    return-void

    .line 148
    :cond_22
    invoke-direct {p0, p1}, parseDigit(Ljava/lang/String;)V

    .line 149
    iget v0, p0, mMax:I

    if-eqz v0, :cond_43

    .line 150
    iget-object v0, p0, mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, mMax:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 152
    iget-object v0, p0, mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, mCurrent:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 157
    :goto_3d
    iget-object v0, p0, mUpgradeProgressMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 154
    :cond_43
    iget-object v0, p0, mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_3d
.end method
