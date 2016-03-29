.class public Lcom/android/keyguard/util/FontEffectUtil$Stroke;
.super Ljava/lang/Object;
.source "FontEffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/util/FontEffectUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Stroke"
.end annotation


# instance fields
.field public blendingOpacity:F

.field public color:I

.field public size:F

.field final synthetic this$0:Lcom/android/keyguard/util/FontEffectUtil;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/util/FontEffectUtil;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/keyguard/util/FontEffectUtil$Stroke;->this$0:Lcom/android/keyguard/util/FontEffectUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
