.class public final enum Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
.super Ljava/lang/Enum;
.source "MapconConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/mapcon/MapconConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MapconRat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

.field public static final enum UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;


# instance fields
.field private final mText:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 117
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "IWLAN"

    const/16 v2, 0x12

    const-string v3, "IWLAN"

    invoke-direct {v0, v1, v4, v2, v3}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 118
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "LTE"

    const/16 v2, 0xd

    const-string v3, "LTE"

    invoke-direct {v0, v1, v5, v2, v3}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 119
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "EHRPD"

    const/16 v2, 0xe

    const-string v3, "EHRPD"

    invoke-direct {v0, v1, v6, v2, v3}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 120
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "UNKNOWN"

    const-string v2, "UNKNOWN"

    invoke-direct {v0, v1, v7, v4, v2}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 121
    new-instance v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    const-string v1, "CS"

    const/16 v2, 0x63

    const-string v3, "CS"

    invoke-direct {v0, v1, v8, v2, v3}, <init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    sget-object v1, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v4

    sget-object v1, LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v5

    sget-object v1, EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v6

    sget-object v1, UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v7

    sget-object v1, CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    aput-object v1, v0, v8

    sput-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .param p3, "value"    # I
    .param p4, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput p3, p0, mValue:I

    .line 128
    iput-object p4, p0, mText:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static getMapconRat(I)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .registers 6
    .param p0, "value"    # I

    .prologue
    .line 136
    invoke-static {}, values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_14

    aget-object v3, v0, v1

    .line 137
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v3}, toInt()I

    move-result v4

    if-ne p0, v4, :cond_11

    .line 141
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :goto_10
    return-object v3

    .line 136
    .restart local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 141
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_14
    sget-object v3, UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    goto :goto_10
.end method

.method public static getMapconRat(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .registers 6
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-static {}, values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_6
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 146
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v3}, toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 150
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :goto_14
    return-object v3

    .line 145
    .restart local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 150
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_18
    sget-object v3, UNKNOWN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    goto :goto_14
.end method

.method public static final isCsPreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .registers 9
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 277
    if-nez p0, :cond_5

    .line 299
    :cond_4
    :goto_4
    return v5

    .line 279
    :cond_5
    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 280
    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 281
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 283
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_18
    sget-object v7, CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 284
    sget-object v7, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 285
    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 286
    .restart local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    sget-object v7, CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v3, v7, :cond_3d

    .line 287
    const-string v5, "[MAPCON]"

    const-string/jumbo v7, "isCsPreceedsIwlan - meet CS first"

    invoke-static {v5, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 288
    goto :goto_4

    .line 289
    :cond_3d
    sget-object v7, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v3, v7, :cond_4a

    .line 290
    const-string v6, "[MAPCON]"

    const-string/jumbo v7, "isCsPreceedsIwlan - meet IWLAN first"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 285
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 295
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_4d
    const-string v5, "[MAPCON]"

    const-string/jumbo v7, "isCsPreceedsIwlan - No WLAN"

    invoke-static {v5, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 296
    goto :goto_4
.end method

.method public static final isIwlanAllowedType([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .registers 7
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    .line 155
    if-nez p0, :cond_4

    .line 156
    const/4 v5, 0x0

    .line 161
    :goto_3
    return v5

    .line 157
    :cond_4
    const-class v5, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v5}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 158
    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_d
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 159
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 161
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_17
    sget-object v5, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_3
.end method

.method public static final isIwlanOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .registers 8
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v5, 0x0

    .line 232
    if-nez p0, :cond_4

    .line 245
    :cond_3
    :goto_3
    return v5

    .line 234
    :cond_4
    const-class v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 235
    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_d
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 236
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 238
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_17
    sget-object v6, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 239
    sget-object v6, LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 242
    const/4 v5, 0x1

    goto :goto_3
.end method

.method public static final isIwlanPreceedsCs([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .registers 9
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 250
    if-nez p0, :cond_5

    .line 272
    :cond_4
    :goto_4
    return v5

    .line 252
    :cond_5
    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 253
    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 254
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 256
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_18
    sget-object v7, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 257
    sget-object v7, CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 258
    move-object v0, p0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2b
    if-ge v1, v2, :cond_4

    aget-object v3, v0, v1

    .line 259
    .restart local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    sget-object v7, CS:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v3, v7, :cond_3c

    .line 260
    const-string v6, "[MAPCON]"

    const-string/jumbo v7, "isIwlanPreceedsCs - meet CS first"

    invoke-static {v6, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 262
    :cond_3c
    sget-object v7, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    if-ne v3, v7, :cond_4a

    .line 263
    const-string v5, "[MAPCON]"

    const-string/jumbo v7, "isIwlanPreceedsCs - meet IWLAN first"

    invoke-static {v5, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 264
    goto :goto_4

    .line 258
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 268
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_4d
    const-string v5, "[MAPCON]"

    const-string/jumbo v7, "isIwlanPreceedsCs - No CS"

    invoke-static {v5, v7}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v6

    .line 269
    goto :goto_4
.end method

.method public static final isIwlanPreceedsLte([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .registers 10
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    if-nez p0, :cond_5

    .line 205
    :cond_4
    :goto_4
    return v5

    .line 192
    :cond_5
    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 193
    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 194
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 196
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_18
    sget-object v7, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 197
    sget-object v7, LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    sget-object v7, EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 198
    :cond_30
    aget-object v7, p0, v5

    invoke-virtual {v7}, ordinal()I

    move-result v7

    sget-object v8, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v8}, ordinal()I

    move-result v8

    if-ne v7, v8, :cond_4

    move v5, v6

    .line 199
    goto :goto_4

    :cond_40
    move v5, v6

    .line 202
    goto :goto_4
.end method

.method public static final isLteOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .registers 8
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v5, 0x0

    .line 212
    if-nez p0, :cond_4

    .line 225
    :cond_3
    :goto_3
    return v5

    .line 214
    :cond_4
    const-class v6, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 215
    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_d
    if-ge v1, v2, :cond_17

    aget-object v3, v0, v1

    .line 216
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 218
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_17
    sget-object v6, LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_27

    sget-object v6, EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 219
    :cond_27
    sget-object v6, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 222
    const/4 v5, 0x1

    goto :goto_3
.end method

.method public static final isLtePreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    .registers 10
    .param p0, "sortedSet"    # [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 168
    if-nez p0, :cond_5

    .line 183
    :cond_4
    :goto_4
    return v5

    .line 170
    :cond_5
    const-class v7, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v7}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    .line 171
    .local v4, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;>;"
    move-object v0, p0

    .local v0, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_e
    if-ge v1, v2, :cond_18

    aget-object v3, v0, v1

    .line 172
    .local v3, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v4, v3}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 174
    .end local v3    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_18
    sget-object v7, LTE:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_28

    sget-object v7, EHRPD:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 175
    :cond_28
    sget-object v7, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v4, v7}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    .line 176
    aget-object v7, p0, v5

    invoke-virtual {v7}, ordinal()I

    move-result v7

    sget-object v8, IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v8}, ordinal()I

    move-result v8

    if-eq v7, v8, :cond_4

    move v5, v6

    .line 177
    goto :goto_4

    :cond_40
    move v5, v6

    .line 180
    goto :goto_4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 111
    const-class v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-object v0
.end method

.method public static values()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .registers 1

    .prologue
    .line 111
    sget-object v0, $VALUES:[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    invoke-virtual {v0}, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .registers 2

    .prologue
    .line 132
    iget v0, p0, mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, mText:Ljava/lang/String;

    return-object v0
.end method
