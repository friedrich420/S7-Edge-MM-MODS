.class public Lcom/android/server/enterprise/billing/EnterpriseBillingPolicyFeatureMonitor;
.super Ljava/lang/Object;
.source "EnterpriseBillingPolicyFeatureMonitor.java"


# static fields
.field public static final FEATURE_NOT_ENABLED:Ljava/lang/String; = "Feature not enabled"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEnterpriseBillingFeatureSupported()Z
    .registers 1

    .prologue
    .line 14
    const/4 v0, 0x1

    return v0
.end method
