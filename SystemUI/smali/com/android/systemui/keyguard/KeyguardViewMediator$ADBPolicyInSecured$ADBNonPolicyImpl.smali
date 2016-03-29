.class Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ADBNonPolicyImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V
    .locals 0

    .prologue
    .line 2879
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;->this$1:Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;Lcom/android/systemui/keyguard/KeyguardViewMediator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;
    .param p2, "x1"    # Lcom/android/systemui/keyguard/KeyguardViewMediator$1;

    .prologue
    .line 2879
    invoke-direct {p0, p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured$ADBNonPolicyImpl;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator$ADBPolicyInSecured;)V

    return-void
.end method


# virtual methods
.method handleDismiss()V
    .locals 0

    .prologue
    .line 2881
    return-void
.end method

.method handleKeyguardDone()V
    .locals 0

    .prologue
    .line 2884
    return-void
.end method
