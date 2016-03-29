.class public Lcom/android/settings/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# static fields
.field public static final DEFAULT_MODES:[I

.field public static final DEFAULT_MODES_VZW:[I


# instance fields
.field private mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

.field private mCurrent:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    .line 54
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x2
        0x4
        0x6
        0x0
        0x1
    .end array-data

    .line 54
    :array_1
    .array-data 4
        0x2
        0x4
        0x8
        0x6
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings/deviceinfo/UsbBackend;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbModeChooserActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static getSummary(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 160
    packed-switch p0, :pswitch_data_0

    .line 174
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 162
    :pswitch_1
    const v0, 0x7f0e0f23

    goto :goto_0

    .line 164
    :pswitch_2
    const v0, 0x7f0e0f22

    goto :goto_0

    .line 166
    :pswitch_3
    const v0, 0x7f0e0f26

    goto :goto_0

    .line 168
    :pswitch_4
    const v0, 0x7f0e0f29

    goto :goto_0

    .line 170
    :pswitch_5
    const v0, 0x7f0e0f2c

    goto :goto_0

    .line 172
    :pswitch_6
    const v0, 0x7f0e0f2e

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 178
    packed-switch p0, :pswitch_data_0

    .line 192
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 180
    :pswitch_1
    const v0, 0x7f0e0f1f

    goto :goto_0

    .line 182
    :pswitch_2
    const v0, 0x7f0e0f21

    goto :goto_0

    .line 184
    :pswitch_3
    const v0, 0x7f0e0f24

    goto :goto_0

    .line 186
    :pswitch_4
    const v0, 0x7f0e0f27

    goto :goto_0

    .line 188
    :pswitch_5
    const v0, 0x7f0e0f2a

    goto :goto_0

    .line 190
    :pswitch_6
    const v0, 0x7f0e0f2d

    goto :goto_0

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "selected"    # Z
    .param p3, "container"    # Landroid/widget/LinearLayout;

    .prologue
    .line 140
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401af

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "v":Landroid/view/View;
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 143
    const v1, 0x1020010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 145
    new-instance v1, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v1, v0

    .line 155
    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 156
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 85
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e0f2f

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f040222

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v5, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v5, 0x7f0e01ba

    new-instance v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v6, p0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/settings/deviceinfo/UsbModeChooserActivity;)V

    invoke-virtual {v2, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 100
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 102
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v5, 0x7f0d0408

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 104
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v2, Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-direct {v2, p0}, Lcom/android/settings/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    .line 105
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v2

    iput v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    .line 106
    const-string v2, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 108
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    sget-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v5, v2, v1

    iget v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    sget-object v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES_VZW:[I

    aget v6, v6, v1

    if-ne v2, v6, :cond_1

    move v2, v3

    :goto_1
    invoke-direct {p0, v5, v2, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V

    .line 107
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    .line 109
    goto :goto_1

    .line 113
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    sget-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 114
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings/deviceinfo/UsbBackend;

    sget-object v5, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v5, v1

    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    sget-object v2, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v5, v2, v1

    iget v2, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mCurrent:I

    sget-object v6, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v6, v6, v1

    if-ne v2, v6, :cond_4

    move v2, v3

    :goto_3
    invoke-direct {p0, v5, v2, v0}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;)V

    .line 113
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v2, v4

    .line 115
    goto :goto_3

    .line 119
    :cond_5
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 130
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 132
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 125
    return-void
.end method
