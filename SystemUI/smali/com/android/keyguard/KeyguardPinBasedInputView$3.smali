.class Lcom/android/keyguard/KeyguardPinBasedInputView$3;
.super Ljava/lang/Object;
.source "KeyguardPinBasedInputView.java"

# interfaces
.implements Lcom/android/keyguard/PasswordTextView$UserActivityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPinBasedInputView;->chooseKeyboardType()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPinBasedInputView;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$3;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserActivity()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView$3;->this$0:Lcom/android/keyguard/KeyguardPinBasedInputView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onUserInput()V

    .line 228
    return-void
.end method
