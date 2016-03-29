.class public final enum Lcom/caverock/androidsvg/CSSParser$MediaType;
.super Ljava/lang/Enum;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/caverock/androidsvg/CSSParser$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum all:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum aural:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum braille:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum embossed:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum handheld:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum print:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum projection:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum tty:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field public static final enum tv:Lcom/caverock/androidsvg/CSSParser$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "all"

    invoke-direct {v0, v1, v3}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 54
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "aural"

    invoke-direct {v0, v1, v4}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->aural:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 55
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "braille"

    invoke-direct {v0, v1, v5}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->braille:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 56
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "embossed"

    invoke-direct {v0, v1, v6}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->embossed:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 57
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "handheld"

    invoke-direct {v0, v1, v7}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->handheld:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 58
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "print"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->print:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 59
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "projection"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->projection:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 60
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "screen"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 61
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "tty"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->tty:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 62
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    const-string v1, "tv"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/CSSParser$MediaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->tv:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 51
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->aural:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->braille:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->embossed:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$MediaType;->handheld:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->print:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->projection:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->tty:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->tv:Lcom/caverock/androidsvg/CSSParser$MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/caverock/androidsvg/CSSParser$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/caverock/androidsvg/CSSParser$MediaType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->ENUM$VALUES:[Lcom/caverock/androidsvg/CSSParser$MediaType;

    array-length v1, v0

    new-array v2, v1, [Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
