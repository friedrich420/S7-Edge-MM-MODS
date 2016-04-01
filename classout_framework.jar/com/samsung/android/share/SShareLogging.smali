.class public Lcom/samsung/android/share/SShareLogging;
.super Ljava/lang/Object;
.source "SShareLogging.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final SURVERY_ACTION:Ljava/lang/String; = "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

.field private static final SURVERY_EXTRA_DATA:Ljava/lang/String; = "data"

.field private static final SURVERY_PERMISSION:Ljava/lang/String; = "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

.field private static final SURVEY_APP_NAME:Ljava/lang/String; = "com.android.internal.app.resolveractivity"

.field private static final SURVEY_CONTENT_APPID:Ljava/lang/String; = "app_id"

.field private static final SURVEY_CONTENT_EXTRA:Ljava/lang/String; = "extra"

.field private static final SURVEY_CONTENT_FEATURE:Ljava/lang/String; = "feature"

.field public static final SURVEY_DETAIL_FEATURE_CHANGEPLAYER:Ljava/lang/String; = "Change Player"

.field public static final SURVEY_DETAIL_FEATURE_CONTACTGROUP:Ljava/lang/String; = "group"

.field public static final SURVEY_DETAIL_FEATURE_CONTACTPRIV:Ljava/lang/String; = "personal"

.field public static final SURVEY_DETAIL_FEATURE_MIRRORING:Ljava/lang/String; = "Screen Mirroring"

.field public static final SURVEY_DETAIL_FEATURE_NEARBY_SHARING:Ljava/lang/String; = "Nearby sharing"

.field public static final SURVEY_DETAIL_FEATURE_PRINT:Ljava/lang/String; = "Print"

.field public static final SURVEY_DETAIL_FEATURE_SCREEN_SHARING:Ljava/lang/String; = "Smart View"

.field public static final SURVEY_FEATURE_APPLIST:Ljava/lang/String; = "APPP"

.field public static final SURVEY_FEATURE_EASYSHARE:Ljava/lang/String; = "EASY"

.field public static final SURVEY_FEATURE_MOREACTION:Ljava/lang/String; = "MORE"

.field public static final SURVEY_FEATURE_START:Ljava/lang/String; = "STRT"

.field private static final SURVEY_TARGET_PACKAGE:Ljava/lang/String; = "com.samsung.android.providers.context"

.field private static final TAG:Ljava/lang/String; = "SShareLogging"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, mIntent:Landroid/content/Intent;

    .line 46
    return-void
.end method

.method private checkSurveyCondition(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 49
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 51
    :cond_14
    const/4 v1, 0x1

    .line 53
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method


# virtual methods
.method public insertLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v2, p0, mIntent:Landroid/content/Intent;

    invoke-direct {p0, v2}, checkSurveyCondition(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 61
    iget-object v2, p0, mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_42

    .line 62
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.internal.app.resolveractivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 79
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_41
    :goto_41
    return-void

    .line 76
    :cond_42
    const-string v2, "SShareLogging"

    const-string v3, "insertLog : no permission of survey"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method
