.class public final Lmf/javax/xml/datatype/DatatypeConstants$Field;
.super Ljava/lang/Object;
.source "DatatypeConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/javax/xml/datatype/DatatypeConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Field"
.end annotation


# instance fields
.field private final id:I

.field private final str:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, str:Ljava/lang/String;

    .line 207
    iput p2, p0, id:I

    .line 208
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILmf/javax/xml/datatype/DatatypeConstants$Field;)V
    .registers 4

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, <init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 225
    iget v0, p0, id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, str:Ljava/lang/String;

    return-object v0
.end method
