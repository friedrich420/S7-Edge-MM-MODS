.class public Lcom/android/systemui/qs/QSDiagnosticLogHelper;
.super Ljava/lang/Object;
.source "QSDiagnosticLogHelper.java"


# static fields
.field public static APP_ID_COVER:Ljava/lang/String;

.field public static APP_ID_QS:Ljava/lang/String;

.field public static QS_FEATURE_AUDIOPATH:Ljava/lang/String;

.field public static QS_FEATURE_BRIGHTNESS:Ljava/lang/String;

.field public static QS_FEATURE_CHANGE_AUDIOPATH:Ljava/lang/String;

.field public static QS_FEATURE_CLICK:Ljava/lang/String;

.field public static QS_FEATURE_CLICK_COVER:Ljava/lang/String;

.field public static QS_FEATURE_EDIT:Ljava/lang/String;

.field public static QS_FEATURE_FLASHLIGHT:Ljava/lang/String;

.field public static QS_FEATURE_LONGCLICK:Ljava/lang/String;

.field public static QS_FEATURE_QCONNECT:Ljava/lang/String;

.field public static QS_FEATURE_SETTING:Ljava/lang/String;

.field public static QS_FEATURE_SFINDER:Ljava/lang/String;

.field public static QS_FEATURE_SOUNDMODE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "com.android.systemui.statusbar.policy.quicksetting"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_QS:Ljava/lang/String;

    .line 27
    const-string v0, "com.sec.android.cover"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_COVER:Ljava/lang/String;

    .line 29
    const-string v0, "QP01"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_SETTING:Ljava/lang/String;

    .line 30
    const-string v0, "QP02"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_EDIT:Ljava/lang/String;

    .line 31
    const-string v0, "QP03"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_SFINDER:Ljava/lang/String;

    .line 32
    const-string v0, "QP04"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_QCONNECT:Ljava/lang/String;

    .line 33
    const-string v0, "QP05"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_BRIGHTNESS:Ljava/lang/String;

    .line 34
    const-string v0, "QP06"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_CLICK:Ljava/lang/String;

    .line 35
    const-string v0, "QP07"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_AUDIOPATH:Ljava/lang/String;

    .line 36
    const-string v0, "QP08"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_CHANGE_AUDIOPATH:Ljava/lang/String;

    .line 39
    const-string v0, "QS03"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_LONGCLICK:Ljava/lang/String;

    .line 41
    const-string v0, "QS06"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_SOUNDMODE:Ljava/lang/String;

    .line 42
    const-string v0, "QS07"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_FLASHLIGHT:Ljava/lang/String;

    .line 44
    const-string v0, "CQ01"

    sput-object v0, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_CLICK_COVER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "extra"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v2

    const-string v3, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 48
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v2, "feature"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    if-eqz p3, :cond_0

    .line 52
    const-string v2, "extra"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    if-eqz p4, :cond_1

    .line 54
    const-string v2, "value"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 61
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_2
    return-void
.end method
