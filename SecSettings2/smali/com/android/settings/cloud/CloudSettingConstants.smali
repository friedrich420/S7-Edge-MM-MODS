.class public final Lcom/android/settings/cloud/CloudSettingConstants;
.super Ljava/lang/Object;
.source "CloudSettingConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cloud/CloudSettingConstants$Protocol;,
        Lcom/android/settings/cloud/CloudSettingConstants$ContentsType;,
        Lcom/android/settings/cloud/CloudSettingConstants$Vendor;
    }
.end annotation


# static fields
.field public static final C_CHINA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "China"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "china"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHINA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/cloud/CloudSettingConstants;->C_CHINA:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method
