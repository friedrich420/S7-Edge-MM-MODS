.class public Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;
.super Ljava/lang/Object;
.source "FontEffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/FontEffectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LinearGradient"
.end annotation


# instance fields
.field public alphas:[F

.field public blendingOpacity:F

.field public colors:[I

.field public positions:[F

.field public scale:F

.field final synthetic this$0:Lcom/android/keyguard/util/FontEffectUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/util/FontEffectUtil;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/keyguard/util/FontEffectUtil$LinearGradient;->this$0:Lcom/android/keyguard/util/FontEffectUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
