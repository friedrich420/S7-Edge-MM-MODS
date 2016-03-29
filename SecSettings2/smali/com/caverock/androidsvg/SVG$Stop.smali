.class public Lcom/caverock/androidsvg/SVG$Stop;
.super Lcom/caverock/androidsvg/SVG$SvgElementBase;
.source "SVG.java"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$SvgContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Stop"
.end annotation


# instance fields
.field public offset:Ljava/lang/Float;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1778
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElementBase;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Lcom/caverock/androidsvg/SVG$SvgObject;)V
    .locals 0
    .param p1, "elem"    # Lcom/caverock/androidsvg/SVG$SvgObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 1787
    return-void
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/caverock/androidsvg/SVG$SvgObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1785
    # getter for: Lcom/caverock/androidsvg/SVG;->EMPTY_CHILD_LIST:Ljava/util/List;
    invoke-static {}, Lcom/caverock/androidsvg/SVG;->access$0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
