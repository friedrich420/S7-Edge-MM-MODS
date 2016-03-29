.class public Lcom/android/keyguard/CarrierText;
.super Landroid/widget/TextView;
.source "CarrierText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/CarrierText$2;,
        Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;,
        Lcom/android/keyguard/CarrierText$StatusMode;
    }
.end annotation


# static fields
.field private static mCarrierTextForSimState:[Ljava/lang/CharSequence;

.field private static mPlmn:[Ljava/lang/CharSequence;

.field private static mSeparator:Ljava/lang/CharSequence;

.field private static mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private static mSpn:[Ljava/lang/CharSequence;

.field private static tele:Landroid/telephony/TelephonyManager;


# instance fields
.field private KnoxCustom_mOperatorLogoView:Z

.field private currentSimNumber:I

.field private insertedMultiSim:Z

.field private isAirplaneMode:Z

.field private isMultiSIMState:Z

.field private it:Landroid/content/Intent;

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsEmergencyCallCapable:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mNumPhones:I

.field private mSimstate_1:Ljava/lang/String;

.field private mSimstate_2:Ljava/lang/String;

.field private mSpnUpdatePhoneID_0:Landroid/content/Intent;

.field private mSpnUpdatePhoneID_1:Landroid/content/Intent;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 171
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 174
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    iput-boolean v4, p0, Lcom/android/keyguard/CarrierText;->KnoxCustom_mOperatorLogoView:Z

    .line 95
    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 96
    const-string v2, ""

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    .line 101
    new-instance v2, Lcom/android/keyguard/CarrierText$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/CarrierText$1;-><init>(Lcom/android/keyguard/CarrierText;)V

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 175
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 177
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isDataOnlyDevice()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iput-boolean v4, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    .line 180
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/R$styleable;->CarrierText:[I

    invoke-virtual {v2, p2, v3, v4, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 183
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v2, Lcom/android/keyguard/R$styleable;->CarrierText_allCaps:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 185
    .local v1, "useAllCaps":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 187
    new-instance v2, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;

    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lcom/android/keyguard/CarrierText$CarrierTextTransformationMethod;-><init>(Lcom/android/keyguard/CarrierText;Landroid/content/Context;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/CarrierText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 189
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/keyguard/CarrierText;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 190
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->initialize()V

    .line 191
    return-void

    .line 185
    .end local v1    # "useAllCaps":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method static synthetic access$000(Lcom/android/keyguard/CarrierText;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->updateAllSlot()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/CarrierText;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;

    .prologue
    .line 64
    iget v0, p0, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/keyguard/CarrierText;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/keyguard/CarrierText;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/keyguard/CarrierText;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    return p1
.end method

.method static synthetic access$300()[Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method private static concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p0, "plmn"    # Ljava/lang/CharSequence;
    .param p1, "spn"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 720
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v2

    .line 721
    .local v0, "plmnValid":Z
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move v1, v2

    .line 722
    .local v1, "spnValid":Z
    :goto_1
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUSCPLMN()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    if-eqz v1, :cond_2

    .line 723
    :cond_0
    if-eqz v0, :cond_1

    const-string v2, "USCC"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 724
    const-string p0, "U.S. Cellular"

    .line 725
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "USCC"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    const-string p1, "U.S. Cellular"

    .line 728
    :cond_2
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    .line 729
    const-string v2, "KeyguardCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 742
    .end local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_3
    :goto_2
    return-object p0

    .end local v0    # "plmnValid":Z
    .end local v1    # "spnValid":Z
    .restart local p0    # "plmn":Ljava/lang/CharSequence;
    :cond_4
    move v0, v3

    .line 720
    goto :goto_0

    .restart local v0    # "plmnValid":Z
    :cond_5
    move v1, v3

    .line 721
    goto :goto_1

    .line 733
    .restart local v1    # "spnValid":Z
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 735
    :cond_7
    if-eqz v0, :cond_8

    .line 736
    const-string v2, "KeyguardCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : plmn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 738
    :cond_8
    if-eqz v1, :cond_9

    .line 739
    const-string v2, "KeyguardCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "concatenate : spn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    .line 740
    goto :goto_2

    .line 742
    :cond_9
    const-string p0, ""

    goto :goto_2
.end method

.method private convertStringToState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 883
    :goto_0
    return-object v0

    .line 856
    :cond_0
    const-string v0, "UNKNOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 858
    :cond_1
    const-string v0, "ABSENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 860
    :cond_2
    const-string v0, "PIN_REQUIRED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 861
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 862
    :cond_3
    const-string v0, "PUK_REQUIRED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 863
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 864
    :cond_4
    const-string v0, "NETWORK_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 865
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 866
    :cond_5
    const-string v0, "READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 867
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 868
    :cond_6
    const-string v0, "NOT_READY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 869
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 870
    :cond_7
    const-string v0, "PERM_DISABLED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 871
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 872
    :cond_8
    const-string v0, "CARD_IO_ERROR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 873
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 874
    :cond_9
    const-string v0, "PERSO_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 875
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 876
    :cond_a
    const-string v0, "NETWORK_SUBSET_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 877
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_SUBSET_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 878
    :cond_b
    const-string v0, "SIM_SERVICE_PROVIDER_LOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 879
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->SIM_SERVICE_PROVIDER_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 880
    :cond_c
    const-string v0, "DETECTED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 881
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->DETECTED:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0

    .line 883
    :cond_d
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    goto/16 :goto_0
.end method

.method public static getPhoneId(I)I
    .locals 4
    .param p0, "subId"    # I

    .prologue
    .line 781
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 782
    .local v0, "phoneIdLocal":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    if-gez v0, :cond_1

    .line 784
    :cond_0
    const-string v1, "KeyguardCarrierText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneId():  phoneId error case  phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 v0, 0x0

    .line 787
    .end local v0    # "phoneIdLocal":I
    :cond_1
    return v0
.end method

.method private getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;
    .locals 4
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 681
    if-nez p1, :cond_0

    .line 682
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    .line 716
    :goto_0
    return-object v1

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v1, :cond_3

    :cond_1
    const/4 v0, 0x1

    .line 691
    .local v0, "missingAndNotProvisioned":Z
    :goto_1
    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/internal/telephony/IccCardConstants$State;->NETWORK_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 692
    :cond_2
    const-string v1, "KeyguardCarrierText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStatusForIccState :  SIM state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    sget-object v1, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 715
    const-string v1, "KeyguardCarrierText"

    const-string v2, "getStatusForIccState :  SIM state = Not Exist"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 685
    .end local v0    # "missingAndNotProvisioned":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 695
    .restart local v0    # "missingAndNotProvisioned":Z
    :pswitch_0
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 697
    :pswitch_1
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissingLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 699
    :pswitch_2
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->PersoLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 701
    :pswitch_3
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimNotReady:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 703
    :pswitch_4
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 705
    :pswitch_5
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPukLocked:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 707
    :pswitch_6
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->Normal:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 709
    :pswitch_7
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimPermDisabled:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 711
    :pswitch_8
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimIOError:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 713
    :pswitch_9
    sget-object v1, Lcom/android/keyguard/CarrierText$StatusMode;->SimMissing:Lcom/android/keyguard/CarrierText$StatusMode;

    goto :goto_0

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private initialize()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 194
    new-array v0, v1, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    .line 195
    new-array v0, v1, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    .line 196
    new-array v0, v1, [Lcom/android/internal/telephony/IccCardConstants$State;

    sput-object v0, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 197
    new-array v0, v1, [Ljava/lang/CharSequence;

    sput-object v0, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    .line 198
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/CarrierText;->mNumPhones:I

    .line 199
    return-void
.end method

.method private makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "simMessage"    # Ljava/lang/CharSequence;
    .param p2, "emergencyCallMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 669
    const-string v0, "KeyguardCarrierText"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeCarrierStringOnEmergencyCapable :  mIsEmergencyCallCapable:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->mIsEmergencyCallCapable:Z

    if-eqz v0, :cond_0

    .line 671
    invoke-static {p1, p2}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 673
    .end local p1    # "simMessage":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method private updateAllSlot()V
    .locals 2

    .prologue
    .line 231
    const-string v0, "KeyguardCarrierText"

    const-string v1, "updateAllSlot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-direct {p0}, Lcom/android/keyguard/CarrierText;->updateIntentData()V

    .line 233
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_1:Landroid/content/Intent;

    if-eqz v0, :cond_1

    const-string v0, "ABSENT"

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NOT_READY"

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_1:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_1:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 238
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 239
    :cond_2
    return-void
.end method

.method private updateIntentData()V
    .locals 9

    .prologue
    const v8, 0x7ffffffb

    const/4 v7, 0x0

    .line 202
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->plmnIntent:Landroid/content/Intent;

    .line 203
    .local v0, "it":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 204
    const-string v4, "subscription"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 205
    .local v2, "subId":I
    invoke-static {v2}, Lcom/android/keyguard/CarrierText;->getPhoneId(I)I

    move-result v1

    .line 207
    .local v1, "phoneId":I
    const-string v4, "KeyguardCarrierText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateIntentData(): isMultiSIMState: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "subId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "plmn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "plmn"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SPN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "spn"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    if-eq v8, v2, :cond_1

    .line 214
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    const-string v5, "subscription"

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 215
    .local v3, "subId_Old":I
    iget-object v4, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-boolean v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSubscriptionListActivated:Z

    if-nez v4, :cond_1

    if-eq v2, v3, :cond_1

    .line 217
    const-string v4, "KeyguardCarrierText"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActiveSubscriptionInfoList is null skip Intent Update subidOld: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v1    # "phoneId":I
    .end local v2    # "subId":I
    .end local v3    # "subId_Old":I
    :cond_0
    :goto_0
    return-void

    .line 223
    .restart local v1    # "phoneId":I
    .restart local v2    # "subId":I
    :cond_1
    if-eqz v1, :cond_2

    if-ne v8, v2, :cond_3

    .line 224
    :cond_2
    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_0:Landroid/content/Intent;

    goto :goto_0

    .line 225
    :cond_3
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 226
    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mSpnUpdatePhoneID_1:Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # Ljava/lang/CharSequence;
    .param p3, "spn"    # Ljava/lang/CharSequence;

    .prologue
    .line 583
    const/4 v0, 0x0

    .line 584
    .local v0, "carrierText":Ljava/lang/CharSequence;
    invoke-direct {p0, p1}, Lcom/android/keyguard/CarrierText;->getStatusForIccState(Lcom/android/internal/telephony/IccCardConstants$State;)Lcom/android/keyguard/CarrierText$StatusMode;

    move-result-object v1

    .line 585
    .local v1, "status":Lcom/android/keyguard/CarrierText$StatusMode;
    sget-object v2, Lcom/android/keyguard/CarrierText$2;->$SwitchMap$com$android$keyguard$CarrierText$StatusMode:[I

    invoke-virtual {v1}, Lcom/android/keyguard/CarrierText$StatusMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 659
    :cond_0
    :goto_0
    const-string v2, "KeyguardCarrierText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCarrierTextForSimState :  SIM state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "carrierText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return-object v0

    .line 587
    :pswitch_0
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 588
    goto :goto_0

    .line 591
    :pswitch_1
    iget-boolean v2, p0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    if-eqz v2, :cond_1

    .line 592
    move-object v0, p2

    goto :goto_0

    .line 594
    :cond_1
    const-string v0, ""

    .line 595
    goto :goto_0

    .line 598
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_network_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 600
    goto :goto_0

    .line 603
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_perso_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 605
    goto :goto_0

    .line 612
    :pswitch_4
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useCdmaCardText()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 613
    move-object v0, p2

    goto :goto_0

    .line 615
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 618
    goto :goto_0

    .line 621
    :pswitch_5
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 622
    const/4 v0, 0x0

    goto :goto_0

    .line 624
    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_permanent_disabled_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 627
    goto :goto_0

    .line 630
    :pswitch_6
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 631
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 634
    :cond_4
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 636
    goto/16 :goto_0

    .line 639
    :pswitch_7
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 640
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_pin_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 647
    :pswitch_8
    invoke-static {p2, p3}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 648
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/keyguard/R$string;->keyguard_puk_locked_message:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 655
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040290

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_0

    .line 585
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getNumberOfActiveSim()I
    .locals 2

    .prologue
    .line 747
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 748
    .local v0, "sil":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v0, :cond_0

    .line 749
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 751
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOperatorLogoView()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/android/keyguard/CarrierText;->KnoxCustom_mOperatorLogoView:Z

    return v0
.end method

.method protected getReadySimCount()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 755
    const/4 v0, 0x0

    .line 756
    .local v0, "count":I
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 757
    .local v1, "phone_on":[I
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v5

    .line 758
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v1, v6

    .line 759
    const/4 v2, 0x0

    .local v2, "sub":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 760
    aget v3, v1, v2

    if-ne v3, v6, :cond_0

    .line 761
    add-int/lit8 v0, v0, 0x1

    .line 759
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    :cond_1
    return v0
.end method

.method protected isReadySimSlot(I)Z
    .locals 5
    .param p1, "slotNum"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 768
    if-le p1, v3, :cond_1

    if-gez p1, :cond_1

    .line 776
    :cond_0
    :goto_0
    return v1

    .line 770
    :cond_1
    new-array v0, v3, [I

    .line 771
    .local v0, "phone_on":[I
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v1

    .line 772
    iget-object v3, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    .line 773
    aget v3, v0, p1

    if-ne v3, v2, :cond_0

    move v1, v2

    .line 774
    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 535
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 537
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSPRPLMN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    .line 542
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 545
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 551
    :goto_0
    return-void

    .line 548
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 549
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 563
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 564
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    const-string v0, "KeyguardCarrierText"

    const-string v1, "onConfigurationChanged: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->updateCarrierText(Landroid/content/Intent;)V

    .line 569
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/android/keyguard/CarrierText;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 558
    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 559
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 527
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 528
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/keyguard/R$string;->keyguard_network_name_separator:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/CarrierText;->mSeparator:Ljava/lang/CharSequence;

    .line 529
    iget-object v1, p0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 530
    .local v0, "shouldMarquee":Z
    invoke-virtual {p0, v0}, Lcom/android/keyguard/CarrierText;->setSelected(Z)V

    .line 531
    return-void
.end method

.method protected updateCarrierText(Landroid/content/Intent;)V
    .locals 27
    .param p1, "updateDataIntent"    # Landroid/content/Intent;

    .prologue
    .line 244
    const/4 v9, 0x0

    .line 245
    .local v9, "knoxCustomLockScreenState":I
    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v10

    .line 246
    .local v10, "knoxCustomSystemManager":Landroid/app/enterprise/knoxcustom/SystemManager;
    if-eqz v10, :cond_0

    .line 247
    invoke-virtual {v10}, Landroid/app/enterprise/knoxcustom/SystemManager;->getLockScreenHiddenItems()I

    move-result v9

    .line 249
    :cond_0
    and-int/lit8 v21, v9, 0x4

    if-eqz v21, :cond_2

    .line 250
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 309
    :goto_0
    :pswitch_0
    const/4 v4, 0x1

    .line 310
    .local v4, "allSimsMissing":Z
    const/4 v6, 0x0

    .line 311
    .local v6, "displayText":Ljava/lang/CharSequence;
    const-string v5, ""

    .line 312
    .local v5, "displayRJIText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/CarrierText;->isAirplaneMode:Z

    .line 315
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateCarrierText(): isMultiSIMState: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz p1, :cond_b

    .line 319
    const-string v21, "KeyguardCarrierText"

    const-string v22, "updateDate All slot"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    .line 325
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_e

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "subscription"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 327
    .local v19, "subId":I
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/CarrierText;->getPhoneId(I)I

    move-result v13

    .line 328
    .local v13, "phoneId":I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    .line 330
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/CarrierText;->convertStringToState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v23

    aput-object v23, v21, v22

    .line 331
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/keyguard/CarrierText;->convertStringToState(Ljava/lang/String;)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v23

    aput-object v23, v21, v22

    .line 332
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mSimState[0]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mSimState[1]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_c

    .line 336
    const-string v21, "KeyguardCarrierText"

    const-string v22, "SIM state UNKNOWN cancel updateCarrierText"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .end local v13    # "phoneId":I
    .end local v19    # "subId":I
    :cond_1
    :goto_2
    return-void

    .line 253
    .end local v4    # "allSimsMissing":Z
    .end local v5    # "displayRJIText":Ljava/lang/String;
    .end local v6    # "displayText":Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/android/keyguard/util/KeyguardSecurityPolicyUtils;->hideCarrierTextInfo(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 254
    const/16 v21, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    .line 261
    :cond_3
    :goto_3
    const-string v21, "gsm.sim.state"

    const-string v22, "ABSENT,ABSENT"

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 262
    .local v12, "mSimstateProp":Ljava/lang/String;
    const/16 v17, 0x0

    .line 263
    .local v17, "simStates":[Ljava/lang/String;
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_6

    .line 264
    const-string v21, ","

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 269
    :goto_4
    const/4 v11, 0x0

    .line 270
    .local v11, "length":I
    if-eqz v17, :cond_4

    .line 271
    move-object/from16 v0, v17

    array-length v11, v0

    .line 273
    :cond_4
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 274
    const-string v21, ""

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    .line 275
    packed-switch v11, :pswitch_data_0

    .line 289
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->isReadySimSlot(I)Z

    move-result v21

    if-eqz v21, :cond_9

    const/16 v21, 0x0

    aget-object v21, v17, v21

    :goto_5
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 290
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->isReadySimSlot(I)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x1

    aget-object v21, v17, v21

    :goto_6
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 256
    .end local v11    # "length":I
    .end local v12    # "mSimstateProp":Ljava/lang/String;
    .end local v17    # "simStates":[Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getOperatorLogoView()Z

    move-result v21

    if-nez v21, :cond_3

    .line 257
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->setVisibility(I)V

    goto :goto_3

    .line 266
    .restart local v12    # "mSimstateProp":Ljava/lang/String;
    .restart local v17    # "simStates":[Ljava/lang/String;
    :cond_6
    const-string v21, "KeyguardCarrierText"

    const-string v22, "SystemProperties get Error happen"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 280
    .restart local v11    # "length":I
    :pswitch_1
    const/16 v21, 0x0

    aget-object v21, v17, v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 281
    const-string v21, "ABSENT"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 284
    :pswitch_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->isReadySimSlot(I)Z

    move-result v21

    if-eqz v21, :cond_7

    const/16 v21, 0x0

    aget-object v21, v17, v21

    :goto_7
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_1:Ljava/lang/String;

    .line 285
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/keyguard/CarrierText;->isReadySimSlot(I)Z

    move-result v21

    if-eqz v21, :cond_8

    const/16 v21, 0x1

    aget-object v21, v17, v21

    :goto_8
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/CarrierText;->mSimstate_2:Ljava/lang/String;

    goto/16 :goto_0

    .line 284
    :cond_7
    const-string v21, "ABSENT"

    goto :goto_7

    .line 285
    :cond_8
    const-string v21, "ABSENT"

    goto :goto_8

    .line 289
    :cond_9
    const-string v21, "ABSENT"

    goto :goto_5

    .line 290
    :cond_a
    const-string v21, "ABSENT"

    goto :goto_6

    .line 322
    .end local v11    # "length":I
    .end local v12    # "mSimstateProp":Ljava/lang/String;
    .end local v17    # "simStates":[Ljava/lang/String;
    .restart local v4    # "allSimsMissing":Z
    .restart local v5    # "displayRJIText":Ljava/lang/String;
    .restart local v6    # "displayText":Ljava/lang/CharSequence;
    :cond_b
    const-string v21, "KeyguardCarrierText"

    const-string v22, "updateDate slot by SubID"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->updateIntentData()V

    goto/16 :goto_1

    .line 339
    .restart local v13    # "phoneId":I
    .restart local v19    # "subId":I
    :cond_c
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSPRPLMN()Z

    move-result v21

    if-eqz v21, :cond_18

    .line 340
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    sget-object v22, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 369
    :goto_9
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    sget-object v22, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    aget-object v22, v22, v13

    sget-object v23, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v23, v23, v13

    sget-object v24, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v24, v24, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/CarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v22

    aput-object v22, v21, v13

    .line 372
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Handling "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , carrierTextForSimState = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    if-eqz v21, :cond_d

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/IccCardConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual/range {v21 .. v22}, Lcom/android/internal/telephony/IccCardConstants$State;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_d

    .line 377
    const/4 v4, 0x0

    .line 378
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    move-object/from16 v0, v21

    invoke-static {v6, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 380
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Result :  displayText = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " , carrierTextForSimState = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v24, v0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->isAirplaneMode:Z

    move/from16 v21, v0

    if-eqz v21, :cond_e

    .line 384
    const-string v22, "Jio WiFi"

    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 385
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v5, v21, v13

    .end local v5    # "displayRJIText":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 390
    .end local v13    # "phoneId":I
    .end local v19    # "subId":I
    .restart local v5    # "displayRJIText":Ljava/lang/String;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getNumberOfActiveSim()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getReadySimCount()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1e

    const/16 v21, 0x1

    :goto_a
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/keyguard/CarrierText;->insertedMultiSim:Z

    .line 391
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateCarrierText insertedMultiSim = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->insertedMultiSim:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->insertedMultiSim:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_f

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/keyguard/util/KeyguardStatusUtils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    .line 397
    .local v8, "isRTL":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v22

    sget v23, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    sget-object v26, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_1f

    const/16 v21, 0x1

    :goto_b
    aget-object v21, v26, v21

    aput-object v21, v24, v25

    const/16 v25, 0x1

    sget-object v26, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_20

    const/16 v21, 0x0

    :goto_c
    aget-object v21, v26, v21

    aput-object v21, v24, v25

    invoke-virtual/range {v22 .. v24}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 400
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateCarrierText(insertedMultiSim(true) displayText = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .end local v8    # "isRTL":Z
    :cond_f
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v22, v0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 406
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "updateCarrierText State: Absent SIM Number = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/CarrierText;->currentSimNumber:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/16 v19, 0x0

    .line 423
    .restart local v19    # "subId":I
    const/4 v13, 0x0

    .line 424
    .restart local v13    # "phoneId":I
    const-string v18, ""

    .line 425
    .local v18, "spn":Ljava/lang/String;
    const-string v14, ""

    .line 426
    .local v14, "plmn":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    const v22, 0x104028f

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 428
    .local v20, "text":Ljava/lang/CharSequence;
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x0

    new-instance v23, Landroid/content/IntentFilter;

    const-string v24, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-direct/range {v23 .. v24}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    .line 430
    .local v7, "i":Landroid/content/Intent;
    if-eqz v7, :cond_13

    .line 433
    const-string v21, "showSpn"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 434
    .local v16, "showSpn":Z
    const-string v21, "showPlmn"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 436
    .local v15, "showPlmn":Z
    if-eqz v16, :cond_10

    .line 437
    const-string v21, "spn"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 439
    :cond_10
    if-eqz v15, :cond_11

    .line 440
    const-string v21, "plmn"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 441
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSPRPLMN()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 442
    sget-object v21, Lcom/android/keyguard/CarrierText;->tele:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v21 .. v21}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v14

    .line 445
    :cond_11
    const-string v21, "subscription"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 446
    invoke-static/range {v19 .. v19}, Lcom/android/keyguard/CarrierText;->getPhoneId(I)I

    move-result v13

    .line 447
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_12

    .line 449
    const-string v21, "KeyguardCarrierText"

    const-string v22, "sim Absent anf plmn = null , spn = null state"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_12
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Getting plmn/spn sticky brdcst for Absent case "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "showPlmn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "showSpn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " phoneId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " subId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_21

    .line 456
    move-object/from16 v20, v14

    .line 462
    .end local v15    # "showPlmn":Z
    .end local v16    # "showSpn":Z
    :cond_13
    :goto_d
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->blockCarrierTextWhenSimNotReady()Z

    move-result v21

    if-eqz v21, :cond_22

    .line 463
    const-string v6, ""

    .line 500
    :goto_e
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isKORUsimText()Z

    move-result v21

    if-eqz v21, :cond_14

    .line 501
    const/4 v6, 0x0

    .line 505
    .end local v7    # "i":Landroid/content/Intent;
    .end local v13    # "phoneId":I
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v18    # "spn":Ljava/lang/String;
    .end local v19    # "subId":I
    .end local v20    # "text":Ljava/lang/CharSequence;
    :cond_14
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->useCdmaCardText()Z

    move-result v21

    if-eqz v21, :cond_16

    .line 506
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_15

    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2c

    .line 507
    :cond_15
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_2b

    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x1

    aget-object v6, v21, v22

    .line 517
    :cond_16
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/settingslib/WirelessUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_17

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->flight_mode:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 521
    :cond_17
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setText :  displayText = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/keyguard/CarrierText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 342
    .restart local v13    # "phoneId":I
    .restart local v19    # "subId":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "showSpn"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    .line 343
    .restart local v16    # "showSpn":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v21, v0

    const-string v22, "showPlmn"

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 344
    .restart local v15    # "showPlmn":Z
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    const-string v22, ""

    aput-object v22, v21, v13

    .line 345
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    const-string v22, ""

    aput-object v22, v21, v13

    .line 346
    if-eqz v16, :cond_19

    .line 347
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "spn"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 349
    :cond_19
    if-eqz v15, :cond_1a

    .line 350
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->it:Landroid/content/Intent;

    move-object/from16 v22, v0

    const-string v23, "plmn"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 352
    :cond_1a
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1b

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_1b

    .line 355
    const-string v21, "KeyguardCarrierText"

    const-string v22, "plmn and spn is empty"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1b
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->disappearDefaultPLMN()Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 358
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    if-eqz v21, :cond_1c

    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1040277

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 360
    sget-object v21, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/android/keyguard/R$string;->kg_default_carrier_text_searching:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 361
    :cond_1c
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    if-eqz v21, :cond_1d

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v21, v21, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const v23, 0x1040277

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1d

    .line 363
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/CarrierText;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    sget v23, Lcom/android/keyguard/R$string;->kg_default_carrier_text_searching:I

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, v13

    .line 366
    :cond_1d
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Getting plmn/spn sticky brdcst  mPlmn:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    aget-object v23, v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " / mSpn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSpn:[Ljava/lang/CharSequence;

    aget-object v23, v23, v13

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " phoneId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " subId:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " showPlmn: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " showSpn:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 390
    .end local v13    # "phoneId":I
    .end local v15    # "showPlmn":Z
    .end local v16    # "showSpn":Z
    .end local v19    # "subId":I
    :cond_1e
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 397
    .restart local v8    # "isRTL":Z
    :cond_1f
    const/16 v21, 0x0

    goto/16 :goto_b

    :cond_20
    const/16 v21, 0x1

    goto/16 :goto_c

    .line 458
    .end local v8    # "isRTL":Z
    .restart local v7    # "i":Landroid/content/Intent;
    .restart local v13    # "phoneId":I
    .restart local v14    # "plmn":Ljava/lang/String;
    .restart local v15    # "showPlmn":Z
    .restart local v16    # "showSpn":Z
    .restart local v18    # "spn":Ljava/lang/String;
    .restart local v19    # "subId":I
    .restart local v20    # "text":Ljava/lang/CharSequence;
    :cond_21
    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/android/keyguard/CarrierText;->concatenate(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v20

    goto/16 :goto_d

    .line 465
    .end local v15    # "showPlmn":Z
    .end local v16    # "showSpn":Z
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/CarrierText;->isMultiSIMState:Z

    move/from16 v21, v0

    if-eqz v21, :cond_2a

    .line 467
    const-string v21, "KeyguardCarrierText"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "sim Absent happen when isMultiSIMState on mSimState[0]: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " mSimState[1] "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_23

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_26

    :cond_23
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_24

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_26

    .line 472
    :cond_24
    if-nez v13, :cond_25

    .line 473
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_e

    .line 476
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    sget-object v22, Lcom/android/keyguard/CarrierText;->mPlmn:[Ljava/lang/CharSequence;

    const/16 v23, 0x0

    aget-object v22, v22, v23

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_e

    .line 482
    :cond_26
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_27

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_28

    :cond_27
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_28

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_28

    .line 485
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x1

    aget-object v6, v21, v22

    goto/16 :goto_e

    .line 488
    :cond_28
    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x0

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_1

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_29

    sget-object v21, Lcom/android/keyguard/CarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    const/16 v22, 0x1

    aget-object v21, v21, v22

    sget-object v22, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 491
    :cond_29
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v6, v21, v22

    goto/16 :goto_e

    .line 497
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->kg_missing_sim_message_short:I

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/CarrierText;->makeCarrierStringOnEmergencyCapable(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_e

    .line 507
    .end local v7    # "i":Landroid/content/Intent;
    .end local v13    # "phoneId":I
    .end local v14    # "plmn":Ljava/lang/String;
    .end local v18    # "spn":Ljava/lang/String;
    .end local v19    # "subId":I
    .end local v20    # "text":Ljava/lang/CharSequence;
    :cond_2b
    sget-object v21, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v22, 0x0

    aget-object v6, v21, v22

    goto/16 :goto_f

    .line 511
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/CarrierText;->getContext()Landroid/content/Context;

    move-result-object v21

    sget v22, Lcom/android/keyguard/R$string;->msim_carrier_text_format:I

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    sget-object v25, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v26, 0x0

    aget-object v25, v25, v26

    aput-object v25, v23, v24

    const/16 v24, 0x1

    sget-object v25, Lcom/android/keyguard/CarrierText;->mCarrierTextForSimState:[Ljava/lang/CharSequence;

    const/16 v26, 0x1

    aget-object v25, v25, v26

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_f

    .line 275
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
