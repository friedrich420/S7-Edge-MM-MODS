.class synthetic Landroid/renderscript/Element$1;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$android$renderscript$Element$DataKind:[I

.field static final synthetic $SwitchMap$android$renderscript$Element$DataType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 983
    invoke-static {}, Landroid/renderscript/Element$DataKind;->values()[Landroid/renderscript/Element$DataKind;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$android$renderscript$Element$DataKind:[I

    :try_start_9
    sget-object v0, $SwitchMap$android$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_LA:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_eb

    :goto_14
    :try_start_14
    sget-object v0, $SwitchMap$android$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_e8

    :goto_1f
    :try_start_1f
    sget-object v0, $SwitchMap$android$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_e5

    :goto_2a
    :try_start_2a
    sget-object v0, $SwitchMap$android$renderscript$Element$DataKind:[I

    sget-object v1, Landroid/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/renderscript/Element$DataKind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_e2

    .line 912
    :goto_35
    invoke-static {}, Landroid/renderscript/Element$DataType;->values()[Landroid/renderscript/Element$DataType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    :try_start_3e
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_df

    :goto_49
    :try_start_49
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_dc

    :goto_54
    :try_start_54
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->FLOAT_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_da

    :goto_5f
    :try_start_5f
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_d8

    :goto_6a
    :try_start_6a
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_d6

    :goto_75
    :try_start_75
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_d4

    :goto_80
    :try_start_80
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->SIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_d2

    :goto_8b
    :try_start_8b
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_97} :catch_d0

    :goto_97
    :try_start_97
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_16:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a3} :catch_ce

    :goto_a3
    :try_start_a3
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_32:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_af} :catch_cc

    :goto_af
    :try_start_af
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->UNSIGNED_64:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_bb
    .catch Ljava/lang/NoSuchFieldError; {:try_start_af .. :try_end_bb} :catch_ca

    :goto_bb
    :try_start_bb
    sget-object v0, $SwitchMap$android$renderscript$Element$DataType:[I

    sget-object v1, Landroid/renderscript/Element$DataType;->BOOLEAN:Landroid/renderscript/Element$DataType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bb .. :try_end_c7} :catch_c8

    :goto_c7
    return-void

    :catch_c8
    move-exception v0

    goto :goto_c7

    :catch_ca
    move-exception v0

    goto :goto_bb

    :catch_cc
    move-exception v0

    goto :goto_af

    :catch_ce
    move-exception v0

    goto :goto_a3

    :catch_d0
    move-exception v0

    goto :goto_97

    :catch_d2
    move-exception v0

    goto :goto_8b

    :catch_d4
    move-exception v0

    goto :goto_80

    :catch_d6
    move-exception v0

    goto :goto_75

    :catch_d8
    move-exception v0

    goto :goto_6a

    :catch_da
    move-exception v0

    goto :goto_5f

    :catch_dc
    move-exception v0

    goto/16 :goto_54

    :catch_df
    move-exception v0

    goto/16 :goto_49

    .line 983
    :catch_e2
    move-exception v0

    goto/16 :goto_35

    :catch_e5
    move-exception v0

    goto/16 :goto_2a

    :catch_e8
    move-exception v0

    goto/16 :goto_1f

    :catch_eb
    move-exception v0

    goto/16 :goto_14
.end method
