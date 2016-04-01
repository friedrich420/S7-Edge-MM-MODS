.class Landroid/spay/PaymentTZServiceConfig$1;
.super Landroid/spay/IPaymentClient$Stub;
.source "PaymentTZServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/PaymentTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/spay/PaymentTZServiceConfig;


# direct methods
.method constructor <init>(Landroid/spay/PaymentTZServiceConfig;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, this$0:Landroid/spay/PaymentTZServiceConfig;

    invoke-direct {p0}, Landroid/spay/IPaymentClient$Stub;-><init>()V

    return-void
.end method
