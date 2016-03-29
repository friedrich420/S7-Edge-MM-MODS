.class public Lcom/android/settings/UCSCryptKeeperTask;
.super Landroid/os/AsyncTask;
.source "UCSCryptKeeperTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;,
        Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;,
        Lcom/android/settings/UCSCryptKeeperTask$StateMachine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static mCSName:Ljava/lang/String;

.field private static mFirstTime:Z

.field private static mPasswordMaxLength:I

.field private static mPasswordMinLength:I

.field private static mPukMaxLength:I

.field private static mPukMinLength:I

.field private static mSavedPassword:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCryptKeeperDescription:Landroid/widget/TextView;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mEnabledWrap:I

.field private mFieldLayout:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mIsEncrypt:Z

.field private mIsPukState:Z

.field mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

.field private mParentActivity:Lcom/android/settings/CryptKeeper;

.field private mPasswordEntry:Landroid/widget/EditText;

.field protected mPinText:Ljava/lang/String;

.field protected mPukText:Ljava/lang/String;

.field protected mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

.field private mStatusString:I

.field private mStatusTextView:Landroid/widget/TextView;

.field private mUri:Ljava/lang/String;

.field owner_info:Ljava/lang/String;

.field passwordType:I

.field ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    const-string v0, ""

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    .line 132
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    .line 134
    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    .line 135
    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    .line 136
    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    .line 137
    sput v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    .line 138
    const-string v0, ""

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/CryptKeeper;Landroid/os/Handler;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentActivity"    # Lcom/android/settings/CryptKeeper;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "isEncrypt"    # Z
    .param p5, "enabledWrap"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 113
    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->passwordType:I

    .line 117
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-direct {v0, p0}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    .line 118
    iput-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    .line 119
    iput-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    .line 121
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    .line 122
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0e1709

    iput v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    .line 133
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    .line 148
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    .line 153
    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    .line 639
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$4;

    invoke-direct {v0, p0}, Lcom/android/settings/UCSCryptKeeperTask$4;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 156
    iput-object p1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    .line 157
    iput-object p2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    .line 158
    const-string v0, "device_policy"

    invoke-virtual {p2, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 159
    iput-object p3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    .line 160
    const v0, 0x7f0d013b

    invoke-virtual {p2, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    .line 162
    const-string v0, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    .line 163
    iput-boolean p4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    .line 164
    iput p5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    .line 165
    invoke-static {}, Lcom/android/settings/EFSProperties;->loadODEConfig()Lcom/android/settings/EFSProperties$ODEProperties;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    .line 166
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 167
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget-object v1, v1, Lcom/android/settings/EFSProperties$ODEProperties;->csName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sput-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    .line 169
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->pinMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    .line 170
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMaxLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    .line 171
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v0, v0, Lcom/android/settings/EFSProperties$ODEProperties;->pukMinLength:I

    sput v0, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    .line 172
    const-string v0, "UCSCryptKeeperTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ODE Properties : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->beginAttempt()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/os/storage/IMountService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/UCSCryptKeeperTask;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/UCSCryptKeeperTask;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;
    .param p1, "x1"    # [I

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->handleBadAttemptUCS([I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEmergencyCall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/UCSCryptKeeperTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    iget v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mEnabledWrap:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/UCSCryptKeeperTask;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/UCSCryptKeeperTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->unlockUCSPUK()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/UCSCryptKeeperTask;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    return v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 110
    sput-object p0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/UCSCryptKeeperTask;)Lcom/android/settings/CryptKeeper;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/UCSCryptKeeperTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/UCSCryptKeeperTask;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    return v0
.end method

.method private beginAttempt()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0d013c

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 178
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f0e0c15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    return-void
.end method

.method private dipToPixel(I)I
    .locals 3
    .param p1, "dip"    # I

    .prologue
    .line 182
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 183
    .local v0, "scale":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 228
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 229
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 230
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttemptUCS([I)V
    .locals 8
    .param p1, "ret"    # [I

    .prologue
    const v7, 0x7f0e16fe

    const v6, 0xfffe

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 926
    if-nez p1, :cond_1

    .line 927
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset()V

    .line 979
    :goto_0
    return-void

    .line 930
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPasswordStringId()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 935
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-eqz v1, :cond_5

    .line 936
    aget v1, p1, v5

    if-ne v1, v6, :cond_4

    .line 937
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v1, :cond_3

    .line 938
    const v1, 0x7f0e16ff

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    .line 946
    :goto_1
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 947
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 948
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 949
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 950
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, v3}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 952
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    sget-object v1, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v2, p1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    .line 953
    const-string v1, "NONE"

    sput-object v1, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    goto :goto_0

    .line 940
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_1

    .line 943
    :cond_4
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset()V

    .line 944
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPukStringId()I

    move-result v1

    aget v2, p1, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 956
    :cond_5
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    .line 957
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 958
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 959
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 960
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v1, v3}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 963
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    aget v1, p1, v3

    const v2, 0xffef

    if-ne v1, v2, :cond_7

    .line 964
    iput-boolean v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    .line 965
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v1}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset()V

    .line 975
    :goto_2
    sget-object v1, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    aget v2, p1, v5

    invoke-direct {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    .line 976
    const-string v1, "NONE"

    sput-object v1, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    goto/16 :goto_0

    .line 966
    :cond_7
    aget v1, p1, v5

    if-ne v1, v6, :cond_9

    .line 967
    iget-boolean v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v1, :cond_8

    .line 968
    const v1, 0x7f0e16ff

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_2

    .line 970
    :cond_8
    invoke-virtual {p0, v7}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(I)V

    goto :goto_2

    .line 973
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getWrongPasswordStringId()I

    move-result v1

    aget v2, p1, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/UCSCryptKeeperTask;->getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 188
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 191
    .local v1, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 193
    .local v2, "filteredImisCount":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 195
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 221
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 196
    .restart local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 199
    .local v8, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 200
    add-int/lit8 v2, v2, 0x1

    .line 201
    goto :goto_0

    .line 204
    :cond_2
    const/4 v0, 0x0

    .line 205
    .local v0, "auxCount":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 206
    .local v7, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 210
    .end local v7    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 215
    .local v6, "nonAuxCount":I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 216
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 217
    goto :goto_0

    .line 221
    .end local v0    # "auxCount":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v6    # "nonAuxCount":I
    .end local v8    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private passwordEntryInitForUCS()V
    .locals 14

    .prologue
    const/16 v13, 0xb4

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 510
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f0d0146

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    .line 511
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f0d0145

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    .line 512
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_2

    .line 513
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->ucsEditListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 514
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 516
    sget v6, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-nez v6, :cond_0

    .line 517
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v7, 0x60000

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v6

    sput v6, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    .line 518
    :cond_0
    sget v6, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    sget v7, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-le v6, v7, :cond_8

    .line 519
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    sget v9, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 524
    :goto_0
    new-instance v5, Lcom/android/settings/UCSCryptKeeperTask$1;

    invoke-direct {v5, p0}, Lcom/android/settings/UCSCryptKeeperTask$1;-><init>(Lcom/android/settings/UCSCryptKeeperTask;)V

    .line 550
    .local v5, "watcher":Landroid/text/TextWatcher;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 551
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 552
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 554
    .local v3, "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz v3, :cond_1

    .line 555
    invoke-direct {p0, v13}, Lcom/android/settings/UCSCryptKeeperTask;->dipToPixel(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 556
    invoke-direct {p0, v13}, Lcom/android/settings/UCSCryptKeeperTask;->dipToPixel(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 557
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mFieldLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    .end local v3    # "lFieldLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 564
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 565
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 566
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 570
    .end local v5    # "watcher":Landroid/text/TextWatcher;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v6

    if-nez v6, :cond_3

    .line 571
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f0d013b

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 572
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 573
    const-string v6, "UCSCryptKeeperTask"

    const-string v7, "Removing the emergency Call button"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 579
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v7, 0x7f0d0159

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 580
    .local v1, "imeSwitcher":Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 581
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_4

    invoke-direct {p0, v2, v10}, Lcom/android/settings/UCSCryptKeeperTask;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 582
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 583
    new-instance v6, Lcom/android/settings/UCSCryptKeeperTask$2;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$2;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 594
    :cond_4
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iget-object v6, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v6, :cond_5

    .line 595
    const-string v6, "UCSCryptKeeperTask"

    const-string v7, "Acquiring wakelock."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const-string v7, "power"

    invoke-virtual {v6, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 597
    .local v4, "pm":Landroid/os/PowerManager;
    if-eqz v4, :cond_5

    .line 598
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const/16 v7, 0x1a

    const-string v8, "UCSCryptKeeperTask"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 599
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iget-object v6, v6, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 602
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const/16 v7, 0x60

    iput v7, v6, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 609
    .end local v4    # "pm":Landroid/os/PowerManager;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/settings/UCSCryptKeeperTask$3;

    invoke-direct {v7, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$3;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 618
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6, v10}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 619
    sget-object v6, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 620
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v6, :cond_6

    .line 621
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v7, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 622
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 623
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v6, v11}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 627
    :cond_6
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    iput v10, v6, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 630
    :cond_7
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 632
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 633
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0x1d4c0

    invoke-virtual {v6, v12, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 636
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v6}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x400000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 637
    return-void

    .line 521
    .end local v1    # "imeSwitcher":Landroid/view/View;
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iget-object v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    new-array v7, v11, [Landroid/text/InputFilter;

    new-instance v8, Landroid/text/InputFilter$LengthFilter;

    sget v9, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-direct {v8, v9}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v8, v7, v10

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_0
.end method

.method private setMessageInUcsInfo(Ljava/lang/String;I)V
    .locals 6
    .param p1, "misc"    # Ljava/lang/String;
    .param p2, "errorMsg"    # I

    .prologue
    const/4 v5, 0x0

    .line 488
    const-string v0, ""

    .line 489
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mOdeProp:Lcom/android/settings/EFSProperties$ODEProperties;

    iget v1, v1, Lcom/android/settings/EFSProperties$ODEProperties;->enabledUCSInODE:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/UCSCryptKeeperTask;->mCSName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    :cond_0
    if-eqz p1, :cond_1

    const-string v1, "NONE"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_1
    if-eqz p2, :cond_2

    const/16 v1, 0x20

    if-eq p2, v1, :cond_2

    const/16 v1, 0x21

    if-eq p2, v1, :cond_2

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e15d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/sec/enterprise/knox/ucm/plugin/agent/UcmAgentService;->getErrorMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v2, 0x7f0d0143

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    .line 500
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 503
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 504
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 505
    iget-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mCryptKeeperDescription:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    return-void
.end method

.method private unlockUCSPUK()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 240
    iget-boolean v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask$EncryptTaskUCS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;-><init>(Lcom/android/settings/UCSCryptKeeperTask;Lcom/android/settings/UCSCryptKeeperTask$1;)V

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/UCSCryptKeeperTask$DecryptTaskUCS;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected checkPin()Z
    .locals 2

    .prologue
    .line 258
    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 259
    .local v0, "length":I
    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    if-lt v0, v1, :cond_0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    if-gt v0, v1, :cond_0

    .line 260
    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    .line 261
    const/4 v1, 0x1

    .line 263
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected checkPuk()Z
    .locals 2

    .prologue
    .line 249
    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMinLength:I

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    if-gt v0, v1, :cond_0

    .line 250
    sget-object v0, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPukText:Ljava/lang/String;

    .line 251
    const/4 v0, 0x1

    .line 253
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public confirmPin()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPinText:Ljava/lang/String;

    sget-object v1, Lcom/android/settings/UCSCryptKeeperTask;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "v"    # [Ljava/lang/Void;

    .prologue
    .line 406
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    .line 407
    .local v1, "service":Landroid/os/storage/IMountService;
    if-eqz v1, :cond_0

    .line 408
    iget-boolean v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-nez v2, :cond_0

    .line 409
    invoke-interface {v1}, Landroid/os/storage/IMountService;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->passwordType:I

    .line 410
    const-string v2, "OwnerInfo"

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->owner_info:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v1    # "service":Landroid/os/storage/IMountService;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "UCSCryptKeeperTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling mount service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUCSFailedAttemptMessage(II)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "resid"    # I
    .param p2, "remainingcount"    # I

    .prologue
    .line 289
    move v1, p2

    .line 290
    .local v1, "remaining":I
    if-lez v1, :cond_0

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    const v4, 0x7f0e1701

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "message":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 294
    .end local v0    # "message":Ljava/lang/CharSequence;
    :cond_0
    iget-object v2, p0, Lcom/android/settings/UCSCryptKeeperTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "message":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method public getWrongPasswordStringId()I
    .locals 1

    .prologue
    .line 277
    const v0, 0x7f0e0c14

    return v0
.end method

.method public getWrongPukStringId()I
    .locals 1

    .prologue
    .line 283
    const v0, 0x7f0e1704

    return v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/UCSCryptKeeperTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Void;)V
    .locals 10
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 423
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f040078

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 425
    const-string v4, ""

    .line 426
    .local v4, "uri":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/UCSCryptKeeperTask;->mUri:Ljava/lang/String;

    .line 427
    const v5, 0x7f0e1709

    iput v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    .line 429
    invoke-direct {p0}, Lcom/android/settings/UCSCryptKeeperTask;->passwordEntryInitForUCS()V

    .line 430
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 433
    :cond_0
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f0d013c

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    .line 434
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 435
    const/4 v3, 0x0

    .line 437
    .local v3, "state":[I
    sget-boolean v5, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    if-eqz v5, :cond_6

    .line 438
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x1e

    if-ge v1, v5, :cond_1

    .line 439
    invoke-static {v4}, Lcom/android/settings/UCMHelpUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v3

    .line 440
    const-string v5, "UCSCryptKeeperTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "status : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    aget v5, v3, v8

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 452
    :cond_1
    sput-boolean v8, Lcom/android/settings/UCSCryptKeeperTask;->mFirstTime:Z

    .line 456
    .end local v1    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 457
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 460
    :cond_2
    aget v5, v3, v8

    const/16 v6, 0x85

    if-ne v5, v6, :cond_3

    .line 461
    iput-boolean v9, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    .line 463
    :cond_3
    sget-object v5, Lcom/android/settings/UCMHelpUtils;->miscInfo:Ljava/lang/String;

    invoke-direct {p0, v5, v8}, Lcom/android/settings/UCSCryptKeeperTask;->setMessageInUcsInfo(Ljava/lang/String;I)V

    .line 465
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    const v6, 0x7f0d0144

    invoke-virtual {v5, v6}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 466
    .local v2, "ownerInfo":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->owner_info:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setSelected(Z)V

    .line 469
    iget-boolean v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsPukState:Z

    if-ne v5, v9, :cond_7

    .line 470
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStateMachine:Lcom/android/settings/UCSCryptKeeperTask$StateMachine;

    invoke-virtual {v5}, Lcom/android/settings/UCSCryptKeeperTask$StateMachine;->reset()V

    .line 485
    :goto_2
    return-void

    .line 444
    .end local v2    # "ownerInfo":Landroid/widget/TextView;
    .restart local v1    # "i":I
    :cond_4
    const/16 v5, 0x1d

    if-eq v1, v5, :cond_5

    .line 446
    const-wide/16 v6, 0x3e8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :catch_0
    move-exception v0

    .line 448
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 454
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    :cond_6
    invoke-static {v4}, Lcom/android/settings/UCMHelpUtils;->getStatus(Ljava/lang/String;)[I

    move-result-object v3

    goto :goto_1

    .line 472
    .restart local v2    # "ownerInfo":Landroid/widget/TextView;
    :cond_7
    iget-boolean v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mIsEncrypt:Z

    if-eqz v5, :cond_8

    .line 473
    const v5, 0x7f0e1700

    iput v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    .line 477
    :goto_4
    iget-object v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 475
    :cond_8
    const v5, 0x7f0e0c10

    iput v5, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusString:I

    goto :goto_4
.end method

.method protected resetPasswordText(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordEntry:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 273
    return-void
.end method

.method protected setHintOrMessageText(I)V
    .locals 5
    .param p1, "resHintId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    const v0, 0x7f0e16fb

    if-ne p1, v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPukMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    .line 307
    :goto_0
    return-void

    .line 302
    :cond_0
    const v0, 0x7f0e16fc

    if-ne p1, v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMinLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    sget v2, Lcom/android/settings/UCSCryptKeeperTask;->mPasswordMaxLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mParentActivity:Lcom/android/settings/CryptKeeper;

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/UCSCryptKeeperTask;->setHintOrMessageText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected setHintOrMessageText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/UCSCryptKeeperTask;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    return-void
.end method
