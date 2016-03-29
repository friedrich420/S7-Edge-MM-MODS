.class public Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SMSCatchReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver$MessageListener;
    }
.end annotation


# static fields
.field public static OPERATOR_CMCC_SEND_BODY:Ljava/lang/String;

.field public static OPERATOR_CMCC_SEND_BODY_1:Ljava/lang/String;

.field public static OPERATOR_CTC_SEND_BODY:Ljava/lang/String;

.field public static OPERATOR_CTC_SEND_BODY_1:Ljava/lang/String;

.field public static OPERATOR_CU_SEND_BODY:Ljava/lang/String;

.field public static OPERATOR_CU_SEND_BODY_1:Ljava/lang/String;

.field public static key_end:Ljava/lang/String;

.field public static key_start:Ljava/lang/String;

.field public static key_type:Ljava/lang/String;

.field private static mMessageListener:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver$MessageListener;

.field public static simCardStatus:I


# instance fields
.field private address:Ljava/lang/String;

.field private body:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private mProvinces:[Ljava/lang/String;

.field private mSMSKeyWork:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVertifyTrafficHandler:Landroid/os/Handler;

.field private operator:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private province:Ljava/lang/String;

.field private timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    .line 33
    const-string v0, ""

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    .line 34
    const-string v0, ""

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    .line 35
    const-string v0, ""

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_type:Ljava/lang/String;

    .line 42
    const-string v0, "CXLL"

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CMCC_SEND_BODY:Ljava/lang/String;

    .line 46
    const-string v0, "LLCX"

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CU_SEND_BODY:Ljava/lang/String;

    .line 50
    const-string v0, "108"

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CTC_SEND_BODY:Ljava/lang/String;

    .line 56
    const-string v0, "CXLL"

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CMCC_SEND_BODY_1:Ljava/lang/String;

    .line 60
    const-string v0, "LLCX"

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CU_SEND_BODY_1:Ljava/lang/String;

    .line 64
    const-string v0, "108"

    sput-object v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->OPERATOR_CTC_SEND_BODY_1:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Handler;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "hashMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    .line 83
    iput-object p1, p0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mVertifyTrafficHandler:Landroid/os/Handler;

    .line 85
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->getSMSKeyWordValue()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    .line 86
    return-void
.end method


# virtual methods
.method public analysisSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/String;
    .locals 44
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "body"    # Ljava/lang/String;
    .param p4, "timestamp"    # J
    .param p6, "index"    # I

    .prologue
    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    if-nez v38, :cond_0

    move-object/from16 v5, p3

    .line 516
    .end local p3    # "body":Ljava/lang/String;
    .local v5, "body":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 209
    .end local v5    # "body":Ljava/lang/String;
    .restart local p3    # "body":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_CMCC_TJ"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 210
    .local v32, "key_CMCC_TJ":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_CMCC_end_TJ"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 211
    .local v33, "key_CMCC_TJ_end":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_CU_BJ"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    .line 212
    .local v34, "key_CU_BJ":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_1"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 213
    .local v20, "key_1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_2"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 214
    .local v24, "key_2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_3"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 215
    .local v25, "key_3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_4"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    .line 216
    .local v26, "key_4":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_5"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 217
    .local v27, "key_5":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_6"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 218
    .local v28, "key_6":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_7"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 219
    .local v29, "key_7":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_8"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 220
    .local v30, "key_8":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_9"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 221
    .local v31, "key_9":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_10"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 222
    .local v21, "key_10":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_11"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 223
    .local v22, "key_11":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_CU_BJ"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 224
    .local v23, "key_12":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_end_1"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    .line 225
    .local v35, "key_end_1":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mSMSKeyWork:Ljava/util/HashMap;

    move-object/from16 v38, v0

    const-string v39, "key_word_for_data_1"

    invoke-virtual/range {v38 .. v39}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 226
    .local v36, "key_for_data_1":Ljava/lang/String;
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "key_start = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sget-object v40, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " key_end = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sget-object v40, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " key_type = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    sget-object v40, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_type:Ljava/lang/String;

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/16 v38, 0x0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 228
    .local v10, "bodyTemp":Ljava/lang/String;
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "bodyTemp = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_0
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "===== body = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v38, "1"

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_type:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_7

    .line 232
    const-string v38, "K"

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_6

    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_6

    .line 233
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    add-int/lit8 v39, v39, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 234
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v38, v38, v39

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 235
    const-string v38, "M"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_5

    .line 236
    const/16 v38, 0x0

    const-string v39, "M"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 237
    .local v14, "body_m":Ljava/lang/String;
    const-string v38, "M"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 238
    .local v11, "body_k":Ljava/lang/String;
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "====="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "   "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :try_start_1
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 241
    .local v19, "int_m":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 243
    .local v18, "int_k":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4090000000000000L    # 1024.0

    div-double v40, v40, v42

    add-double v12, v38, v40

    .line 244
    .local v12, "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 246
    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p3

    .line 332
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v12    # "body_double":D
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v18    # "int_k":I
    .end local v19    # "int_m":I
    :cond_1
    :goto_1
    const-string v38, "GB"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_e

    .line 333
    const/16 v38, 0x0

    const-string v39, "GB"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 334
    .restart local v14    # "body_m":Ljava/lang/String;
    const/4 v11, 0x0

    .line 335
    .restart local v11    # "body_k":Ljava/lang/String;
    const-string v38, "."

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_d

    .line 336
    const-string v38, "GB"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x2

    const-string v39, "."

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 340
    :goto_2
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "====="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "GB   "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 343
    .restart local v19    # "int_m":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 345
    .restart local v18    # "int_k":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4090000000000000L    # 1024.0

    div-double v40, v40, v42

    add-double v12, v38, v40

    .line 346
    .restart local v12    # "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 348
    const-wide/high16 v38, 0x4090000000000000L    # 1024.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object p3

    .line 373
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v12    # "body_double":D
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v18    # "int_k":I
    .end local v19    # "int_m":I
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->isLegal(Ljava/lang/String;)Z

    move-result v38

    if-nez v38, :cond_3

    .line 374
    const/16 v38, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 375
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "body then = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :try_start_3
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_3

    .line 378
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_11

    .line 379
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 380
    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v39

    add-int v38, v38, v39

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    add-int/lit8 v39, v39, -0x1

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 381
    const-string v38, "M"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_10

    .line 382
    const/16 v38, 0x0

    const-string v39, "M"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 383
    .restart local v14    # "body_m":Ljava/lang/String;
    const-string v38, "M"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const-string v39, "M"

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v38, v38, v39

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 384
    .restart local v11    # "body_k":Ljava/lang/String;
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "====="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "   "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 386
    :try_start_4
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 387
    .restart local v19    # "int_m":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 389
    .restart local v18    # "int_k":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4090000000000000L    # 1024.0

    div-double v40, v40, v42

    add-double v12, v38, v40

    .line 390
    .restart local v12    # "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 392
    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    move-result-object p3

    .line 474
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v12    # "body_double":D
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v18    # "int_k":I
    .end local v19    # "int_m":I
    :cond_3
    :goto_4
    const-string v38, "GB"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1f

    .line 475
    const/16 v38, 0x0

    const-string v39, "GB"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 476
    .restart local v14    # "body_m":Ljava/lang/String;
    const/4 v11, 0x0

    .line 477
    .restart local v11    # "body_k":Ljava/lang/String;
    const-string v38, "."

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1e

    .line 478
    const-string v38, "GB"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x2

    const-string v39, "."

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 482
    :goto_5
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "====="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "GB   "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :try_start_5
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 485
    .restart local v19    # "int_m":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 487
    .restart local v18    # "int_k":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4090000000000000L    # 1024.0

    div-double v40, v40, v42

    add-double v12, v38, v40

    .line 488
    .restart local v12    # "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 490
    const-wide/high16 v38, 0x4090000000000000L    # 1024.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_a

    move-result-object p3

    .line 515
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v12    # "body_double":D
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v18    # "int_k":I
    .end local v19    # "int_m":I
    :cond_4
    :goto_6
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "=====analysisSMS========="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p3

    .line 516
    .end local p3    # "body":Ljava/lang/String;
    .restart local v5    # "body":Ljava/lang/String;
    goto/16 :goto_0

    .line 247
    .end local v5    # "body":Ljava/lang/String;
    .restart local v11    # "body_k":Ljava/lang/String;
    .restart local v14    # "body_m":Ljava/lang/String;
    .restart local p3    # "body":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 248
    .local v15, "e":Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 329
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v15

    .line 330
    .local v15, "e":Ljava/lang/Exception;
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Exception()"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 252
    .end local v15    # "e":Ljava/lang/Exception;
    :cond_5
    :try_start_7
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 254
    .restart local v18    # "int_k":I
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4090000000000000L    # 1024.0

    div-double v12, v38, v40

    .line 255
    .restart local v12    # "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 257
    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object p3

    goto/16 :goto_1

    .line 258
    .end local v12    # "body_double":D
    .end local v18    # "int_k":I
    :catch_2
    move-exception v15

    .line 259
    .local v15, "e":Ljava/lang/NumberFormatException;
    :try_start_8
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 262
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_6
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    .line 263
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 264
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v38, v38, v39

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 267
    :cond_7
    const-string v38, "0"

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_type:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1

    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    .line 268
    const-string v38, "K"

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_a

    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_a

    .line 269
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    add-int/lit8 v39, v39, 0x2

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 270
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v38, v38, v39

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 271
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 273
    .local v37, "sharedpre":Landroid/content/SharedPreferences;
    const/16 v38, 0x0

    const-string v39, "M"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 274
    .restart local v14    # "body_m":Ljava/lang/String;
    const-string v38, "M"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 275
    .restart local v11    # "body_k":Ljava/lang/String;
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "====="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "   "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    .line 277
    :try_start_9
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 278
    .restart local v19    # "int_m":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 280
    .restart local v18    # "int_k":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4090000000000000L    # 1024.0

    div-double v40, v40, v42

    add-double v12, v38, v40

    .line 281
    .restart local v12    # "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 283
    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    .line 285
    invoke-static/range {p3 .. p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 287
    .local v8, "bodyDou":D
    sget v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_9

    .line 288
    const-string v38, "set_data_limit_1"

    const-string v39, "max"

    invoke-interface/range {v37 .. v39}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 292
    .local v4, "allData":Ljava/lang/String;
    :goto_7
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "=====Data limit========="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v38, "max"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 294
    const-string p3, "null"

    .line 295
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 297
    :cond_8
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 298
    .local v6, "allDataDou":D
    sub-double v38, v6, v8

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 290
    .end local v4    # "allData":Ljava/lang/String;
    .end local v6    # "allDataDou":D
    :cond_9
    const-string v38, "set_data_limit"

    const-string v39, "max"

    invoke-interface/range {v37 .. v39}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-result-object v4

    .restart local v4    # "allData":Ljava/lang/String;
    goto :goto_7

    .line 299
    .end local v4    # "allData":Ljava/lang/String;
    .end local v8    # "bodyDou":D
    .end local v12    # "body_double":D
    .end local v18    # "int_k":I
    .end local v19    # "int_m":I
    :catch_3
    move-exception v15

    .line 300
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    :try_start_a
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 304
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .end local v37    # "sharedpre":Landroid/content/SharedPreferences;
    :cond_a
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1

    .line 305
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 306
    sget-object v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_start:Ljava/lang/String;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v39

    add-int v38, v38, v39

    sget-object v39, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->key_end:Ljava/lang/String;

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 307
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v37

    .line 308
    .restart local v37    # "sharedpre":Landroid/content/SharedPreferences;
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "=====0.equals(key_type)========="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 310
    :try_start_b
    invoke-static/range {p3 .. p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 312
    .restart local v8    # "bodyDou":D
    sget v38, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    const/16 v39, 0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_c

    .line 313
    const-string v38, "set_data_limit_1"

    const-string v39, "max"

    invoke-interface/range {v37 .. v39}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 317
    .restart local v4    # "allData":Ljava/lang/String;
    :goto_8
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "=====Data limit========="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v38, "max"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_b

    .line 319
    const-string p3, "null"

    .line 320
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 322
    :cond_b
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 323
    .restart local v6    # "allDataDou":D
    sub-double v38, v6, v8

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_1

    .line 315
    .end local v4    # "allData":Ljava/lang/String;
    .end local v6    # "allDataDou":D
    :cond_c
    const-string v38, "set_data_limit"

    const-string v39, "max"

    invoke-interface/range {v37 .. v39}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    move-result-object v4

    .restart local v4    # "allData":Ljava/lang/String;
    goto :goto_8

    .line 324
    .end local v4    # "allData":Ljava/lang/String;
    .end local v8    # "bodyDou":D
    :catch_4
    move-exception v15

    .line 325
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    :try_start_c
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_1

    .line 338
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    .end local v37    # "sharedpre":Landroid/content/SharedPreferences;
    .restart local v11    # "body_k":Ljava/lang/String;
    .restart local v14    # "body_m":Ljava/lang/String;
    :cond_d
    const-string v38, "GB"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_2

    .line 349
    :catch_5
    move-exception v15

    .line 350
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 352
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_e
    const-string v38, "G"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_2

    .line 353
    const/16 v38, 0x0

    const-string v39, "G"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 354
    .restart local v14    # "body_m":Ljava/lang/String;
    const/4 v11, 0x0

    .line 355
    .restart local v11    # "body_k":Ljava/lang/String;
    const-string v38, "."

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_f

    .line 356
    const-string v38, "G"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    const-string v39, "."

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 360
    :goto_9
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "====="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "GB   "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_d
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 363
    .restart local v19    # "int_m":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 365
    .restart local v18    # "int_k":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4090000000000000L    # 1024.0

    div-double v40, v40, v42

    add-double v12, v38, v40

    .line 366
    .restart local v12    # "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 368
    const-wide/high16 v38, 0x4090000000000000L    # 1024.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_6

    move-result-object p3

    goto/16 :goto_3

    .line 358
    .end local v12    # "body_double":D
    .end local v18    # "int_k":I
    .end local v19    # "int_m":I
    :cond_f
    const-string v38, "G"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_9

    .line 369
    :catch_6
    move-exception v15

    .line 370
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 393
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catch_7
    move-exception v15

    .line 394
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    :try_start_e
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_4

    .line 470
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :catch_8
    move-exception v16

    .line 471
    .local v16, "ex":Ljava/lang/Exception;
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "Exception()"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 398
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_10
    :try_start_f
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 400
    .restart local v18    # "int_k":I
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4090000000000000L    # 1024.0

    div-double v12, v38, v40

    .line 401
    .restart local v12    # "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 403
    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_9
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    move-result-object p3

    goto/16 :goto_4

    .line 404
    .end local v12    # "body_double":D
    .end local v18    # "int_k":I
    :catch_9
    move-exception v15

    .line 405
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    :try_start_10
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 408
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_11
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_12

    .line 409
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 410
    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x10

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 411
    :cond_12
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_13

    .line 412
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 413
    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x5

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 414
    :cond_13
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_14

    .line 415
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 416
    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x8

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 420
    :cond_14
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_15

    .line 421
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 422
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x7

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 426
    :cond_15
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_16

    .line 427
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 428
    invoke-static/range {v31 .. v31}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x6

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 429
    :cond_16
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_17

    .line 430
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 431
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x5

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 435
    :cond_17
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_18

    .line 436
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 437
    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x10

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 438
    :cond_18
    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_3

    .line 439
    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 440
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1a

    .line 441
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_a
    const/16 v38, 0x3

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_19

    .line 442
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_19

    .line 443
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 441
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 447
    :cond_19
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 448
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x3

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 449
    .end local v17    # "i":I
    :cond_1a
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_1c

    .line 450
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_b
    const/16 v38, 0x3

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_1b

    .line 451
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_1b

    .line 452
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 450
    add-int/lit8 v17, v17, 0x1

    goto :goto_b

    .line 456
    :cond_1b
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 457
    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x3

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    goto/16 :goto_4

    .line 458
    .end local v17    # "i":I
    :cond_1c
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_3

    .line 459
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_c
    const/16 v38, 0x3

    move/from16 v0, v17

    move/from16 v1, v38

    if-ge v0, v1, :cond_1d

    .line 460
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_1d

    .line 461
    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 459
    add-int/lit8 v17, v17, 0x1

    goto :goto_c

    .line 465
    :cond_1d
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 466
    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x2

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    move-result-object p3

    goto/16 :goto_4

    .line 480
    .end local v17    # "i":I
    .restart local v11    # "body_k":Ljava/lang/String;
    .restart local v14    # "body_m":Ljava/lang/String;
    :cond_1e
    const-string v38, "GB"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 491
    :catch_a
    move-exception v15

    .line 492
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 494
    .end local v11    # "body_k":Ljava/lang/String;
    .end local v14    # "body_m":Ljava/lang/String;
    .end local v15    # "e":Ljava/lang/NumberFormatException;
    :cond_1f
    const-string v38, "G"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_4

    .line 495
    const/16 v38, 0x0

    const-string v39, "G"

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 496
    .restart local v14    # "body_m":Ljava/lang/String;
    const/4 v11, 0x0

    .line 497
    .restart local v11    # "body_k":Ljava/lang/String;
    const-string v38, "."

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    const/16 v39, -0x1

    move/from16 v0, v38

    move/from16 v1, v39

    if-eq v0, v1, :cond_20

    .line 498
    const-string v38, "G"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    const-string v39, "."

    invoke-static/range {v39 .. v39}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p3

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 502
    :goto_d
    const-string v38, "settings/SMSCatchReceiver"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "====="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, "GB   "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :try_start_11
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    .line 505
    .restart local v19    # "int_m":I
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 507
    .restart local v18    # "int_k":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v38, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v40, v0

    const-wide/high16 v42, 0x4090000000000000L    # 1024.0

    div-double v40, v40, v42

    add-double v12, v38, v40

    .line 508
    .restart local v12    # "body_double":D
    const-wide/high16 v38, 0x4059000000000000L    # 100.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->round(D)J

    move-result-wide v38

    move-wide/from16 v0, v38

    long-to-double v0, v0

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x4059000000000000L    # 100.0

    div-double v12, v38, v40

    .line 510
    const-wide/high16 v38, 0x4090000000000000L    # 1024.0

    mul-double v38, v38, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->toString(D)Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_b

    move-result-object p3

    goto/16 :goto_6

    .line 500
    .end local v12    # "body_double":D
    .end local v18    # "int_k":I
    .end local v19    # "int_m":I
    :cond_20
    const-string v38, "G"

    invoke-static/range {v38 .. v38}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v38

    add-int/lit8 v38, v38, 0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v39

    move-object/from16 v0, p3

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_d

    .line 511
    :catch_b
    move-exception v15

    .line 512
    .restart local v15    # "e":Ljava/lang/NumberFormatException;
    const-string v38, "settings/SMSCatchReceiver"

    const-string v39, "NumberFormatException()"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6
.end method

.method public final getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 520
    const-string v6, "pdus"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v1, v6

    check-cast v1, [Ljava/lang/Object;

    .line 521
    .local v1, "messages":[Ljava/lang/Object;
    array-length v6, v1

    new-array v4, v6, [[B

    .line 523
    .local v4, "pduObjs":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 524
    aget-object v6, v1, v0

    check-cast v6, [B

    check-cast v6, [B

    aput-object v6, v4, v0

    .line 523
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 526
    :cond_0
    array-length v6, v4

    new-array v5, v6, [[B

    .line 527
    .local v5, "pdus":[[B
    array-length v3, v5

    .line 528
    .local v3, "pduCount":I
    new-array v2, v3, [Landroid/telephony/SmsMessage;

    .line 529
    .local v2, "msgs":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    .line 530
    aget-object v6, v4, v0

    aput-object v6, v5, v0

    .line 531
    aget-object v6, v5, v0

    invoke-static {v6}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v6

    aput-object v6, v2, v0

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    :cond_1
    return-object v2
.end method

.method public isLegal(Ljava/lang/String;)Z
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 194
    const-string v1, "settings/SMSCatchReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "===== isLegal text = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "settings/SMSCatchReceiver"

    const-string v2, "Exception() so it\'s unLegal string"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 22
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->prefs:Landroid/content/SharedPreferences;

    .line 91
    const/16 v17, 0x1

    .line 92
    .local v17, "isSetWell":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "operator_choose"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->operator:Ljava/lang/String;

    .line 93
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "province_choose"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->province:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "city_choose"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->city:Ljava/lang/String;

    .line 95
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/settings/trafficmanager/SmsReceiverService;->ACTION_SEND_RESPONSE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    const-string v2, "settings/SMSCatchReceiver/LPF"

    const-string v3, "the com.android.mms.transaction.MESSAGE_SENT receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->getResultCode()I

    move-result v14

    .line 98
    .local v14, "errorCode":I
    const-string v2, "settings/SMSCatchReceiver/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error code is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const/4 v2, -0x1

    if-ne v14, v2, :cond_1

    .line 100
    const-string v2, "settings/SMSCatchReceiver/LPF"

    const-string v3, "SMS send success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    .end local v14    # "errorCode":I
    :cond_0
    :goto_0
    return-void

    .line 102
    .restart local v14    # "errorCode":I
    :cond_1
    const-string v2, "settings/SMSCatchReceiver/LPF"

    const-string v3, "SMS send fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.android.settings.trafficmanager.status"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v19, "mIntent":Landroid/content/Intent;
    const-string v2, "receive_type"

    const/16 v3, 0x66

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    const-string v2, "simslot"

    sget v3, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v2, "settings/SMSCatchReceiver/LPF"

    const-string v3, "send the brod fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 108
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    goto :goto_0

    .line 112
    .end local v14    # "errorCode":I
    .end local v19    # "mIntent":Landroid/content/Intent;
    :cond_2
    sget v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "operator_choose_1"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->operator:Ljava/lang/String;

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "province_choose_1"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->province:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->prefs:Landroid/content/SharedPreferences;

    const-string v3, "city_choose_1"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->city:Ljava/lang/String;

    .line 118
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->operator:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->province:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->city:Ljava/lang/String;

    if-nez v2, :cond_5

    .line 119
    :cond_4
    const/16 v17, 0x0

    .line 121
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1100b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mProvinces:[Ljava/lang/String;

    .line 122
    const/16 v16, 0x0

    .line 124
    .local v16, "isGet":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v21

    .line 126
    .local v21, "messages":[Landroid/telephony/SmsMessage;
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    .line 127
    move-object/from16 v9, v21

    .local v9, "arr$":[Landroid/telephony/SmsMessage;
    array-length v0, v9

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_7

    aget-object v20, v9, v15

    .line 129
    .local v20, "message":Landroid/telephony/SmsMessage;
    if-eqz v20, :cond_6

    .line 130
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    .line 131
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->address:Ljava/lang/String;

    .line 132
    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->timestamp:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :cond_6
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 134
    :catch_0
    move-exception v12

    .line 135
    .local v12, "e":Ljava/lang/Exception;
    const-string v2, "settings/SMSCatchReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when receive sms message , exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 138
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v20    # "message":Landroid/telephony/SmsMessage;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->address:Ljava/lang/String;

    if-eqz v2, :cond_c

    const-string v2, "CMCC"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->operator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->address:Ljava/lang/String;

    const-string v3, "10086"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    :cond_8
    const-string v2, "settings/SMSCatchReceiver"

    const-string v3, "===== analysisSMS"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->isLegal(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 150
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->timestamp:J

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->analysisSMS(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    .line 152
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->isLegal(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 153
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->timestamp:J

    .line 154
    .local v10, "checkTime":J
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 155
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    sget v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    if-nez v2, :cond_e

    .line 156
    const-string v2, "check_time"

    invoke-interface {v13, v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    const-string v2, "data_used_by_check_time"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_used_by_check_time"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 160
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "check_time"

    invoke-static {v2, v3, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 170
    :cond_a
    :goto_3
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.android.settings.trafficmanager.status"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .restart local v19    # "mIntent":Landroid/content/Intent;
    const-string v2, "receive_type"

    const/16 v3, 0x64

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v2, "simslot"

    sget v3, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 175
    const-string v2, "settings/SMSCatchReceiver/LPF"

    const-string v3, "send the brod"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    .line 178
    const/16 v16, 0x1

    .line 180
    .end local v10    # "checkTime":J
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "mIntent":Landroid/content/Intent;
    :cond_b
    if-nez v16, :cond_0

    .line 184
    const/4 v2, -0x1

    sput v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    .line 185
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.android.settings.trafficmanager.status"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 186
    .restart local v19    # "mIntent":Landroid/content/Intent;
    const-string v2, "receive_type"

    const/16 v3, 0x66

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 187
    const-string v2, "settings/SMSCatchReceiver/LPF"

    const-string v3, "send the brod fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 141
    .end local v19    # "mIntent":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->address:Ljava/lang/String;

    if-eqz v2, :cond_d

    const-string v2, "CU"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->operator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->address:Ljava/lang/String;

    const-string v3, "10010"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 144
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->address:Ljava/lang/String;

    if-eqz v2, :cond_8

    const-string v2, "CTC"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->operator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->address:Ljava/lang/String;

    const-string v3, "1000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    .line 162
    .restart local v10    # "checkTime":J
    .restart local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_e
    sget v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 163
    const-string v2, "check_time_1"

    invoke-interface {v13, v2, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 164
    const-string v2, "data_used_by_check_time_1"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    invoke-interface {v13, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_used_by_check_time_1"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->body:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 167
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "check_time_1"

    invoke-static {v2, v3, v10, v11}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_3
.end method

.method public setOnReceivedMessageListener(Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver$MessageListener;)V
    .locals 0
    .param p1, "messageListener"    # Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver$MessageListener;

    .prologue
    .line 541
    sput-object p1, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->mMessageListener:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver$MessageListener;

    .line 542
    return-void
.end method
