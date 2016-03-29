.class Lcom/android/keyguard/status/KeyguardDateView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardDateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/status/KeyguardDateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/status/KeyguardDateView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/status/KeyguardDateView;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/keyguard/status/KeyguardDateView$3;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/keyguard/status/KeyguardDateView$3;->this$0:Lcom/android/keyguard/status/KeyguardDateView;

    invoke-virtual {v0}, Lcom/android/keyguard/status/KeyguardDateView;->updateDateText()V

    .line 78
    return-void
.end method
