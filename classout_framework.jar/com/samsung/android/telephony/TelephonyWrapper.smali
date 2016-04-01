.class public Lcom/samsung/android/telephony/TelephonyWrapper;
.super Ljava/lang/Object;
.source "TelephonyWrapper.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "TelephonyWrapper"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needsOtaServiceProvisioning()Z
    .registers 2

    .prologue
    .line 36
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method
