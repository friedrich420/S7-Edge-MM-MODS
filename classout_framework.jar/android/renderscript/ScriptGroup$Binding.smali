.class public final Landroid/renderscript/ScriptGroup$Binding;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binding"
.end annotation


# instance fields
.field private final mField:Landroid/renderscript/Script$FieldID;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .registers 3
    .param p1, "field"    # Landroid/renderscript/Script$FieldID;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 845
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 846
    iput-object p1, p0, mField:Landroid/renderscript/Script$FieldID;

    .line 847
    iput-object p2, p0, mValue:Ljava/lang/Object;

    .line 848
    return-void
.end method


# virtual methods
.method getField()Landroid/renderscript/Script$FieldID;
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, mField:Landroid/renderscript/Script$FieldID;

    return-object v0
.end method

.method getValue()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, mValue:Ljava/lang/Object;

    return-object v0
.end method
