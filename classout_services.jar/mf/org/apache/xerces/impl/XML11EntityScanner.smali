.class public Lmf/org/apache/xerces/impl/XML11EntityScanner;
.super Lmf/org/apache/xerces/impl/XMLEntityScanner;
.source "XML11EntityScanner.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/XMLEntityScanner;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public peekChar()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v1, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v2, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v1, v2, :cond_f

    .line 69
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, load(IZ)Z

    .line 73
    :cond_f
    iget-object v1, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v2, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v2, v2, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v1, v2

    .line 76
    .local v0, "c":I
    iget-object v1, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 77
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x85

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x2028

    if-eq v0, v1, :cond_2e

    .line 80
    .end local v0    # "c":I
    :cond_2d
    :goto_2d
    return v0

    .line 77
    .restart local v0    # "c":I
    :cond_2e
    const/16 v0, 0xa

    goto :goto_2d
.end method

.method public scanChar()I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x85

    const/16 v10, 0xd

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 96
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v3, v4, :cond_15

    .line 97
    invoke-virtual {p0, v7, v8}, load(IZ)Z

    .line 101
    :cond_15
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v3, v5

    .line 102
    .local v0, "c":I
    const/4 v2, 0x0

    .line 103
    .local v2, "external":Z
    if-eq v0, v9, :cond_36

    .line 104
    if-eq v0, v10, :cond_2e

    if-eq v0, v11, :cond_2e

    const/16 v3, 0x2028

    if-ne v0, v3, :cond_76

    :cond_2e
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    if-eqz v2, :cond_76

    .line 105
    :cond_36
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 106
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v8, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 107
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v3, v4, :cond_56

    .line 108
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v4, v0

    aput-char v4, v3, v7

    .line 109
    invoke-virtual {p0, v8, v7}, load(IZ)Z

    .line 111
    :cond_56
    if-ne v0, v10, :cond_74

    if-eqz v2, :cond_74

    .line 112
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v5, 0x1

    iput v6, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v3, v5

    .line 113
    .local v1, "cc":I
    if-eq v1, v9, :cond_74

    if-eq v1, v11, :cond_74

    .line 114
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 117
    .end local v1    # "cc":I
    :cond_74
    const/16 v0, 0xa

    .line 121
    :cond_76
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 122
    return v0
.end method

.method public scanContent(Lmf/org/apache/xerces/xni/XMLString;)I
    .registers 13
    .param p1, "content"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 780
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_a1

    .line 781
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, load(IZ)Z

    .line 791
    :cond_f
    :goto_f
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 792
    .local v6, "offset":I
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v7, v6

    .line 793
    .local v0, "c":I
    const/4 v5, 0x0

    .line 794
    .local v5, "newlines":I
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    .line 795
    .local v2, "external":Z
    const/16 v7, 0xa

    if-eq v0, v7, :cond_32

    const/16 v7, 0xd

    if-eq v0, v7, :cond_30

    const/16 v7, 0x85

    if-eq v0, v7, :cond_30

    const/16 v7, 0x2028

    if-ne v0, v7, :cond_15c

    :cond_30
    if-eqz v2, :cond_15c

    .line 797
    :cond_32
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    .line 798
    const/16 v7, 0xd

    if-ne v0, v7, :cond_fd

    if-eqz v2, :cond_fd

    .line 799
    add-int/lit8 v5, v5, 0x1

    .line 800
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 801
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 802
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_d1

    .line 803
    const/4 v6, 0x0

    .line 804
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v9, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v10, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 805
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 806
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 807
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, load(IZ)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 840
    :goto_7f
    move v3, v6

    .local v3, "i":I
    :goto_80
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v3, v7, :cond_150

    .line 843
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v7, v6

    .line 844
    .local v4, "length":I
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_15c

    .line 845
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v7, v6, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 846
    const/4 v7, -0x1

    .line 886
    .end local v3    # "i":I
    :goto_a0
    return v7

    .line 783
    .end local v0    # "c":I
    .end local v2    # "external":Z
    .end local v4    # "length":I
    .end local v5    # "newlines":I
    .end local v6    # "offset":I
    :cond_a1
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_f

    .line 784
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v8, 0x0

    iget-object v9, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v10, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v10, v10, -0x1

    aget-char v9, v9, v10

    aput-char v9, v7, v8

    .line 785
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, load(IZ)Z

    .line 786
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 787
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_f

    .line 811
    .restart local v0    # "c":I
    .restart local v2    # "external":Z
    .restart local v5    # "newlines":I
    .restart local v6    # "offset":I
    :cond_d1
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v7, v8

    .line 812
    .local v1, "cc":I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_e3

    const/16 v7, 0x85

    if-ne v1, v7, :cond_fa

    .line 813
    :cond_e3
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 814
    add-int/lit8 v6, v6, 0x1

    .line 839
    .end local v1    # "cc":I
    :cond_ed
    :goto_ed
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    .line 796
    if-lt v7, v8, :cond_32

    goto :goto_7f

    .line 818
    .restart local v1    # "cc":I
    :cond_fa
    add-int/lit8 v5, v5, 0x1

    .line 820
    goto :goto_ed

    .line 821
    .end local v1    # "cc":I
    :cond_fd
    const/16 v7, 0xa

    if-eq v0, v7, :cond_10b

    const/16 v7, 0x85

    if-eq v0, v7, :cond_109

    const/16 v7, 0x2028

    if-ne v0, v7, :cond_146

    :cond_109
    if-eqz v2, :cond_146

    .line 822
    :cond_10b
    add-int/lit8 v5, v5, 0x1

    .line 823
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 824
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 825
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_ed

    .line 826
    const/4 v6, 0x0

    .line 827
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v9, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v10, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 828
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 829
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 830
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, load(IZ)Z

    move-result v7

    if-eqz v7, :cond_ed

    goto/16 :goto_7f

    .line 836
    :cond_146
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_7f

    .line 841
    .restart local v3    # "i":I
    :cond_150
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v8, 0xa

    aput-char v8, v7, v3

    .line 840
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_80

    .line 851
    .end local v3    # "i":I
    :cond_15c
    if-eqz v2, :cond_1e7

    .line 852
    :cond_15e
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v7, v8, :cond_1a5

    .line 870
    :goto_168
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v7, v6

    .line 871
    .restart local v4    # "length":I
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v9, v4, v5

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 872
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p1, v7, v6, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 875
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v8, :cond_1f3

    .line 876
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v8

    .line 879
    const/16 v7, 0xd

    if-eq v0, v7, :cond_19e

    const/16 v7, 0x85

    if-eq v0, v7, :cond_19e

    const/16 v7, 0x2028

    if-ne v0, v7, :cond_1a2

    :cond_19e
    if-eqz v2, :cond_1a2

    .line 880
    const/16 v0, 0xa

    :cond_1a2
    :goto_1a2
    move v7, v0

    .line 886
    goto/16 :goto_a0

    .line 853
    .end local v4    # "length":I
    :cond_1a5
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    .line 854
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Content(I)Z

    move-result v7

    if-eqz v7, :cond_1c1

    const/16 v7, 0x85

    if-eq v0, v7, :cond_1c1

    const/16 v7, 0x2028

    if-ne v0, v7, :cond_15e

    .line 855
    :cond_1c1
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_168

    .line 862
    :cond_1ca
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    .line 864
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11InternalEntityContent(I)Z

    move-result v7

    if-nez v7, :cond_1e7

    .line 865
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_168

    .line 861
    :cond_1e7
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v7, v8, :cond_1ca

    goto/16 :goto_168

    .line 884
    .restart local v4    # "length":I
    :cond_1f3
    const/4 v0, -0x1

    goto :goto_1a2
.end method

.method public scanData(Ljava/lang/String;Lmf/org/apache/xerces/util/XMLStringBuffer;)Z
    .registers 22
    .param p1, "delimiter"    # Ljava/lang/String;
    .param p2, "buffer"    # Lmf/org/apache/xerces/util/XMLStringBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1068
    const/4 v7, 0x0

    .line 1069
    .local v7, "done":Z
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 1070
    .local v5, "delimLen":I
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1071
    .local v4, "charAt0":C
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v13}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v8

    .line 1074
    .local v8, "external":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v14, :cond_29

    .line 1075
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, load(IZ)Z

    .line 1078
    :cond_29
    const/4 v1, 0x0

    .line 1080
    .local v1, "bNextEntity":Z
    :goto_2a
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v14, v5

    if-lt v13, v14, :cond_3b

    .line 1081
    if-eqz v1, :cond_b6

    .line 1094
    :cond_3b
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v14, v5

    if-lt v13, v14, :cond_10b

    .line 1096
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v14

    .line 1097
    .local v10, "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1098
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move-object/from16 v0, p0

    iget-object v15, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1099
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v15, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 1100
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1101
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1102
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, load(IZ)Z

    .line 1103
    const/4 v13, 0x0

    .line 1250
    :goto_b5
    return v13

    .line 1083
    .end local v10    # "length":I
    :cond_b6
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 1084
    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1085
    move-object/from16 v0, p0

    iget-object v15, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 1086
    const/16 v16, 0x0

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    .line 1083
    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, load(IZ)Z

    move-result v1

    .line 1090
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v14, 0x0

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1091
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v14, 0x0

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto/16 :goto_2a

    .line 1107
    :cond_10b
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v12, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1108
    .local v12, "offset":I
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v2, v13, v12

    .line 1109
    .local v2, "c":I
    const/4 v11, 0x0

    .line 1110
    .local v11, "newlines":I
    const/16 v13, 0xa

    if-eq v2, v13, :cond_12c

    const/16 v13, 0xd

    if-eq v2, v13, :cond_12a

    const/16 v13, 0x85

    if-eq v2, v13, :cond_12a

    const/16 v13, 0x2028

    if-ne v2, v13, :cond_283

    :cond_12a
    if-eqz v8, :cond_283

    .line 1112
    :cond_12c
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    .line 1113
    const/16 v13, 0xd

    if-ne v2, v13, :cond_1ff

    if-eqz v8, :cond_1ff

    .line 1114
    add-int/lit8 v11, v11, 0x1

    .line 1115
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1116
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1117
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v14, :cond_1c9

    .line 1118
    const/4 v12, 0x0

    .line 1119
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v15, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 1120
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1121
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1122
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, load(IZ)Z

    move-result v13

    if-eqz v13, :cond_1c9

    .line 1156
    :goto_19a
    move v9, v12

    .local v9, "i":I
    :goto_19b
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v9, v13, :cond_275

    .line 1159
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v12

    .line 1160
    .restart local v10    # "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_283

    .line 1161
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1162
    const/4 v13, 0x1

    goto/16 :goto_b5

    .line 1126
    .end local v9    # "i":I
    .end local v10    # "length":I
    :cond_1c9
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v3, v13, v14

    .line 1127
    .local v3, "cc":I
    const/16 v13, 0xa

    if-eq v3, v13, :cond_1df

    const/16 v13, 0x85

    if-ne v3, v13, :cond_1fc

    .line 1128
    :cond_1df
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1129
    add-int/lit8 v12, v12, 0x1

    .line 1155
    .end local v3    # "cc":I
    :cond_1eb
    :goto_1eb
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v14, v14, -0x1

    .line 1111
    if-lt v13, v14, :cond_12c

    goto :goto_19a

    .line 1133
    .restart local v3    # "cc":I
    :cond_1fc
    add-int/lit8 v11, v11, 0x1

    .line 1135
    goto :goto_1eb

    .line 1136
    .end local v3    # "cc":I
    :cond_1ff
    const/16 v13, 0xa

    if-eq v2, v13, :cond_20d

    const/16 v13, 0x85

    if-eq v2, v13, :cond_20b

    const/16 v13, 0x2028

    if-ne v2, v13, :cond_269

    :cond_20b
    if-eqz v8, :cond_269

    .line 1137
    :cond_20d
    add-int/lit8 v11, v11, 0x1

    .line 1138
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1139
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v14, 0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1140
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v14, :cond_1eb

    .line 1141
    const/4 v12, 0x0

    .line 1142
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    move-object/from16 v0, p0

    iget-object v15, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v15, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 1143
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1144
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1145
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v11, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    .line 1146
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v13}, load(IZ)Z

    move-result v13

    if-eqz v13, :cond_1eb

    goto/16 :goto_19a

    .line 1152
    :cond_269
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_19a

    .line 1157
    .restart local v9    # "i":I
    :cond_275
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v14, 0xa

    aput-char v14, v13, v9

    .line 1156
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_19b

    .line 1167
    .end local v9    # "i":I
    :cond_283
    if-eqz v8, :cond_429

    .line 1168
    :cond_285
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v13, v14, :cond_2bb

    .line 1241
    :goto_293
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v12

    .line 1242
    .restart local v10    # "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v15, v10, v11

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1243
    if-eqz v7, :cond_2a9

    .line 1244
    sub-int/2addr v10, v5

    .line 1246
    :cond_2a9
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1249
    if-eqz v7, :cond_14

    .line 1250
    if-eqz v7, :cond_439

    const/4 v13, 0x0

    goto/16 :goto_b5

    .line 1169
    .end local v10    # "length":I
    :cond_2bb
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    .line 1170
    if-ne v2, v4, :cond_32a

    .line 1172
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v13, -0x1

    .line 1173
    .local v6, "delimOffset":I
    const/4 v9, 0x1

    .restart local v9    # "i":I
    :goto_2da
    if-lt v9, v5, :cond_2e8

    .line 1184
    :goto_2dc
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int v14, v6, v5

    if-ne v13, v14, :cond_285

    .line 1185
    const/4 v7, 0x1

    .line 1186
    goto :goto_293

    .line 1174
    :cond_2e8
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v14, :cond_300

    .line 1175
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v14, v9

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_293

    .line 1178
    :cond_300
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    .line 1179
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v2, :cond_327

    .line 1180
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_2dc

    .line 1173
    :cond_327
    add-int/lit8 v9, v9, 0x1

    goto :goto_2da

    .line 1189
    .end local v6    # "delimOffset":I
    .end local v9    # "i":I
    :cond_32a
    const/16 v13, 0xa

    if-eq v2, v13, :cond_33a

    const/16 v13, 0xd

    if-eq v2, v13, :cond_33a

    const/16 v13, 0x85

    if-eq v2, v13, :cond_33a

    const/16 v13, 0x2028

    if-ne v2, v13, :cond_346

    .line 1190
    :cond_33a
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_293

    .line 1195
    :cond_346
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v13

    if-nez v13, :cond_285

    .line 1196
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1197
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v12

    .line 1198
    .restart local v10    # "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v15, v10, v11

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1199
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1200
    const/4 v13, 0x1

    goto/16 :goto_b5

    .line 1206
    .end local v10    # "length":I
    :cond_377
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    .line 1207
    if-ne v2, v4, :cond_3e8

    .line 1209
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v13, -0x1

    .line 1210
    .restart local v6    # "delimOffset":I
    const/4 v9, 0x1

    .restart local v9    # "i":I
    :goto_396
    if-lt v9, v5, :cond_3a5

    .line 1221
    :goto_398
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int v14, v6, v5

    if-ne v13, v14, :cond_429

    .line 1222
    const/4 v7, 0x1

    .line 1223
    goto/16 :goto_293

    .line 1211
    :cond_3a5
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v13, v14, :cond_3be

    .line 1212
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int/2addr v14, v9

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_293

    .line 1215
    :cond_3be
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v15, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v16, v15, 0x1

    move/from16 v0, v16

    iput v0, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v2, v13, v15

    .line 1216
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-eq v13, v2, :cond_3e5

    .line 1217
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_398

    .line 1210
    :cond_3e5
    add-int/lit8 v9, v9, 0x1

    goto :goto_396

    .line 1226
    .end local v6    # "delimOffset":I
    .end local v9    # "i":I
    :cond_3e8
    const/16 v13, 0xa

    if-ne v2, v13, :cond_3f8

    .line 1227
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_293

    .line 1232
    :cond_3f8
    invoke-static {v2}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v13

    if-nez v13, :cond_429

    .line 1233
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1234
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v10, v13, v12

    .line 1235
    .restart local v10    # "length":I
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v15, v10, v11

    add-int/2addr v14, v15

    iput v14, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1236
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v12, v10}, Lmf/org/apache/xerces/util/XMLStringBuffer;->append([CII)V

    .line 1237
    const/4 v13, 0x1

    goto/16 :goto_b5

    .line 1205
    .end local v10    # "length":I
    :cond_429
    move-object/from16 v0, p0

    iget-object v13, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v13, v13, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v14, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v14, v14, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v13, v14, :cond_377

    goto/16 :goto_293

    .line 1250
    .restart local v10    # "length":I
    :cond_439
    const/4 v13, 0x1

    goto/16 :goto_b5
.end method

.method public scanLiteral(ILmf/org/apache/xerces/xni/XMLString;)I
    .registers 14
    .param p1, "quote"    # I
    .param p2, "content"    # Lmf/org/apache/xerces/xni/XMLString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 922
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_a1

    .line 923
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, load(IZ)Z

    .line 933
    :cond_f
    :goto_f
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 934
    .local v6, "offset":I
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v7, v6

    .line 935
    .local v0, "c":I
    const/4 v5, 0x0

    .line 936
    .local v5, "newlines":I
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v2

    .line 937
    .local v2, "external":Z
    const/16 v7, 0xa

    if-eq v0, v7, :cond_32

    const/16 v7, 0xd

    if-eq v0, v7, :cond_30

    const/16 v7, 0x85

    if-eq v0, v7, :cond_30

    const/16 v7, 0x2028

    if-ne v0, v7, :cond_15c

    :cond_30
    if-eqz v2, :cond_15c

    .line 939
    :cond_32
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    .line 940
    const/16 v7, 0xd

    if-ne v0, v7, :cond_fd

    if-eqz v2, :cond_fd

    .line 941
    add-int/lit8 v5, v5, 0x1

    .line 942
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 943
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 944
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_d1

    .line 945
    const/4 v6, 0x0

    .line 946
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v9, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v10, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 947
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 948
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 949
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, load(IZ)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 982
    :goto_7f
    move v3, v6

    .local v3, "i":I
    :goto_80
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    if-lt v3, v7, :cond_150

    .line 985
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v7, v6

    .line 986
    .local v4, "length":I
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_15c

    .line 987
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p2, v7, v6, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 988
    const/4 v7, -0x1

    .line 1031
    .end local v3    # "i":I
    :goto_a0
    return v7

    .line 925
    .end local v0    # "c":I
    .end local v2    # "external":Z
    .end local v4    # "length":I
    .end local v5    # "newlines":I
    .end local v6    # "offset":I
    :cond_a1
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    if-ne v7, v8, :cond_f

    .line 926
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/4 v8, 0x0

    iget-object v9, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v10, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v10, v10, -0x1

    aget-char v9, v9, v10

    aput-char v9, v7, v8

    .line 927
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, load(IZ)Z

    .line 928
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 929
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x0

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_f

    .line 953
    .restart local v0    # "c":I
    .restart local v2    # "external":Z
    .restart local v5    # "newlines":I
    .restart local v6    # "offset":I
    :cond_d1
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v7, v8

    .line 954
    .local v1, "cc":I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_e3

    const/16 v7, 0x85

    if-ne v1, v7, :cond_fa

    .line 955
    :cond_e3
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 956
    add-int/lit8 v6, v6, 0x1

    .line 981
    .end local v1    # "cc":I
    :cond_ed
    :goto_ed
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v8, v8, -0x1

    .line 938
    if-lt v7, v8, :cond_32

    goto :goto_7f

    .line 960
    .restart local v1    # "cc":I
    :cond_fa
    add-int/lit8 v5, v5, 0x1

    .line 962
    goto :goto_ed

    .line 963
    .end local v1    # "cc":I
    :cond_fd
    const/16 v7, 0xa

    if-eq v0, v7, :cond_10b

    const/16 v7, 0x85

    if-eq v0, v7, :cond_109

    const/16 v7, 0x2028

    if-ne v0, v7, :cond_146

    :cond_109
    if-eqz v2, :cond_146

    .line 964
    :cond_10b
    add-int/lit8 v5, v5, 0x1

    .line 965
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 966
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    const/4 v8, 0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 967
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v8, :cond_ed

    .line 968
    const/4 v6, 0x0

    .line 969
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    iget-object v9, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v9, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v10, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v10, v10, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    sub-int/2addr v9, v10

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->baseCharOffset:I

    .line 970
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 971
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v5, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 972
    const/4 v7, 0x0

    invoke-virtual {p0, v5, v7}, load(IZ)Z

    move-result v7

    if-eqz v7, :cond_ed

    goto/16 :goto_7f

    .line 978
    :cond_146
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_7f

    .line 983
    .restart local v3    # "i":I
    :cond_150
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    const/16 v8, 0xa

    aput-char v8, v7, v3

    .line 982
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_80

    .line 993
    .end local v3    # "i":I
    :cond_15c
    if-eqz v2, :cond_1f3

    .line 994
    :cond_15e
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v7, v8, :cond_19e

    .line 1014
    :goto_168
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v4, v7, v6

    .line 1015
    .restart local v4    # "length":I
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    sub-int v9, v4, v5

    add-int/2addr v8, v9

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1016
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {p2, v7, v6, v4}, Lmf/org/apache/xerces/xni/XMLString;->setValues([CII)V

    .line 1019
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-eq v7, v8, :cond_1ff

    .line 1020
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v8

    .line 1024
    if-ne v0, p1, :cond_19b

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v7, :cond_19b

    .line 1025
    const/4 v0, -0x1

    :cond_19b
    :goto_19b
    move v7, v0

    .line 1031
    goto/16 :goto_a0

    .line 995
    .end local v4    # "length":I
    :cond_19e
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    .line 996
    if-eq v0, p1, :cond_1c0

    const/16 v7, 0x25

    if-eq v0, v7, :cond_1c0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Content(I)Z

    move-result v7

    if-eqz v7, :cond_1c0

    .line 997
    const/16 v7, 0x85

    if-eq v0, v7, :cond_1c0

    const/16 v7, 0x2028

    if-ne v0, v7, :cond_15e

    .line 998
    :cond_1c0
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_168

    .line 1005
    :cond_1c9
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v9, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v10, v9, 0x1

    iput v10, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v7, v9

    .line 1007
    if-ne v0, p1, :cond_1df

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->literal:Z

    if-eqz v7, :cond_1e9

    .line 1008
    :cond_1df
    const/16 v7, 0x25

    if-eq v0, v7, :cond_1e9

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11InternalEntityContent(I)Z

    move-result v7

    if-nez v7, :cond_1f3

    .line 1009
    :cond_1e9
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v8, -0x1

    iput v8, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_168

    .line 1004
    :cond_1f3
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v8, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v8, v8, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-lt v7, v8, :cond_1c9

    goto/16 :goto_168

    .line 1029
    .restart local v4    # "length":I
    :cond_1ff
    const/4 v0, -0x1

    goto :goto_19b
.end method

.method public scanNCName()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 409
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_11

    .line 410
    invoke-virtual {p0, v8, v9}, load(IZ)Z

    .line 414
    :cond_11
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 415
    .local v3, "offset":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v6, v3

    .line 417
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 418
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 419
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v6, v8

    .line 420
    const/4 v3, 0x0

    .line 421
    invoke-virtual {p0, v9, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 422
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 423
    iget-object v6, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    .line 541
    :cond_4e
    :goto_4e
    return-object v4

    .line 428
    :cond_4f
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 429
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_81

    .line 430
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v6, v8

    .line 431
    const/4 v3, 0x0

    .line 432
    invoke-virtual {p0, v9, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 433
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 434
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_4e

    .line 438
    :cond_81
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    .line 439
    .local v1, "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 440
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v6

    if-nez v6, :cond_a4

    .line 441
    :cond_9b
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_4e

    .line 444
    :cond_a4
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 445
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v6, v8

    .line 446
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v1, v6, v9

    .line 447
    const/4 v3, 0x0

    .line 448
    invoke-virtual {p0, v10, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 449
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 450
    iget-object v6, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v10}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    .line 451
    .local v4, "symbol":Ljava/lang/String;
    goto/16 :goto_4e

    .line 460
    .end local v1    # "ch2":C
    .end local v4    # "symbol":Ljava/lang/String;
    :cond_d9
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    .line 461
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v6

    if-eqz v6, :cond_147

    .line 462
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 463
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 464
    .local v2, "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_13b

    .line 466
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 467
    .local v5, "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 475
    .end local v5    # "tmp":[C
    :goto_118
    const/4 v3, 0x0

    .line 476
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 533
    .end local v2    # "length":I
    :cond_11f
    :goto_11f
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 534
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 537
    const/4 v4, 0x0

    .line 538
    .restart local v4    # "symbol":Ljava/lang/String;
    if-lez v2, :cond_4e

    .line 539
    iget-object v6, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4e

    .line 472
    .end local v4    # "symbol":Ljava/lang/String;
    :cond_13b
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 473
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 472
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_118

    .line 481
    .end local v2    # "length":I
    :cond_147
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 482
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_1a0

    .line 483
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 484
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_194

    .line 486
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 487
    .restart local v5    # "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 495
    .end local v5    # "tmp":[C
    :goto_17c
    const/4 v3, 0x0

    .line 496
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_1a0

    .line 497
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 498
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_11f

    .line 492
    :cond_194
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 493
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 492
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17c

    .line 502
    .end local v2    # "length":I
    :cond_1a0
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    .line 503
    .restart local v1    # "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_1ba

    .line 504
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCName(I)Z

    move-result v6

    if-nez v6, :cond_1c4

    .line 505
    :cond_1ba
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_11f

    .line 508
    :cond_1c4
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 509
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 510
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_1fc

    .line 512
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 513
    .restart local v5    # "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 515
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 521
    .end local v5    # "tmp":[C
    :goto_1f3
    const/4 v3, 0x0

    .line 522
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    goto/16 :goto_11f

    .line 518
    :cond_1fc
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 519
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 518
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f3
.end method

.method public scanName()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 254
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_11

    .line 255
    invoke-virtual {p0, v8, v9}, load(IZ)Z

    .line 259
    :cond_11
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 260
    .local v3, "offset":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aget-char v0, v6, v3

    .line 262
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v6

    if-eqz v6, :cond_4f

    .line 263
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 264
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v6, v8

    .line 265
    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0, v9, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 267
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 268
    iget-object v6, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    .line 386
    :cond_4e
    :goto_4e
    return-object v4

    .line 273
    :cond_4f
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_4e

    .line 274
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_81

    .line 275
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v6, v8

    .line 276
    const/4 v3, 0x0

    .line 277
    invoke-virtual {p0, v9, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 278
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 279
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_4e

    .line 283
    :cond_81
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    .line 284
    .local v1, "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_9b

    .line 285
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameStart(I)Z

    move-result v6

    if-nez v6, :cond_a4

    .line 286
    :cond_9b
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_4e

    .line 289
    :cond_a4
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 290
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v0, v6, v8

    .line 291
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    aput-char v1, v6, v9

    .line 292
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p0, v10, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 294
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v7, v7, 0x2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 295
    iget-object v6, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v8, v10}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "symbol":Ljava/lang/String;
    goto/16 :goto_4e

    .line 305
    .end local v1    # "ch2":C
    .end local v4    # "symbol":Ljava/lang/String;
    :cond_d9
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    .line 306
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-eqz v6, :cond_147

    .line 307
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 308
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 309
    .local v2, "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_13b

    .line 311
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 312
    .local v5, "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 320
    .end local v5    # "tmp":[C
    :goto_118
    const/4 v3, 0x0

    .line 321
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 378
    .end local v2    # "length":I
    :cond_11f
    :goto_11f
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 379
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 382
    const/4 v4, 0x0

    .line 383
    .restart local v4    # "symbol":Ljava/lang/String;
    if-lez v2, :cond_4e

    .line 384
    iget-object v6, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4e

    .line 317
    .end local v4    # "symbol":Ljava/lang/String;
    :cond_13b
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 318
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 317
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_118

    .line 326
    .end local v2    # "length":I
    :cond_147
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_11f

    .line 327
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_1a0

    .line 328
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 329
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_194

    .line 331
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 332
    .restart local v5    # "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 340
    .end local v5    # "tmp":[C
    :goto_17c
    const/4 v3, 0x0

    .line 341
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_1a0

    .line 342
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 343
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    goto :goto_11f

    .line 337
    :cond_194
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 338
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 337
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_17c

    .line 347
    .end local v2    # "length":I
    :cond_1a0
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    .line 348
    .restart local v1    # "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_1ba

    .line 349
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-nez v6, :cond_1c4

    .line 350
    :cond_1ba
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_11f

    .line 353
    :cond_1c4
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 354
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 355
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_1fc

    .line 357
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 358
    .restart local v5    # "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 360
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 366
    .end local v5    # "tmp":[C
    :goto_1f3
    const/4 v3, 0x0

    .line 367
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    goto/16 :goto_11f

    .line 363
    :cond_1fc
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 364
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 363
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1f3
.end method

.method public scanNmtoken()Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 143
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v6, v7, :cond_f

    .line 144
    const/4 v6, 0x1

    invoke-virtual {p0, v8, v6}, load(IZ)Z

    .line 148
    :cond_f
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v3, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 151
    .local v3, "offset":I
    :cond_13
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v6, v7

    .line 152
    .local v0, "ch":C
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-eqz v6, :cond_80

    .line 153
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_13

    .line 154
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 155
    .local v2, "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_74

    .line 157
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 158
    .local v5, "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 166
    .end local v5    # "tmp":[C
    :goto_52
    const/4 v3, 0x0

    .line 167
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 224
    .end local v2    # "length":I
    :cond_59
    :goto_59
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 225
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v7, v2

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 228
    const/4 v4, 0x0

    .line 229
    .local v4, "symbol":Ljava/lang/String;
    if-lez v2, :cond_73

    .line 230
    iget-object v6, p0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-virtual {v6, v7, v3, v2}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    .line 232
    :cond_73
    return-object v4

    .line 163
    .end local v4    # "symbol":Ljava/lang/String;
    :cond_74
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 164
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 163
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_52

    .line 172
    .end local v2    # "length":I
    :cond_80
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 173
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_d9

    .line 174
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 175
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_cd

    .line 177
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 178
    .restart local v5    # "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 186
    .end local v5    # "tmp":[C
    :goto_b5
    const/4 v3, 0x0

    .line 187
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_d9

    .line 188
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 189
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_59

    .line 183
    :cond_cd
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 184
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 183
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b5

    .line 193
    .end local v2    # "length":I
    :cond_d9
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v6, v7

    .line 194
    .local v1, "ch2":C
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_f3

    .line 195
    invoke-static {v0, v1}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v6

    if-nez v6, :cond_fd

    .line 196
    :cond_f3
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, -0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_59

    .line 199
    :cond_fd
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v7, v6, :cond_13

    .line 200
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    sub-int v2, v6, v3

    .line 201
    .restart local v2    # "length":I
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    if-ne v2, v6, :cond_135

    .line 203
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v5, v6, [C

    .line 204
    .restart local v5    # "tmp":[C
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    invoke-static {v6, v3, v5, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput-object v5, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 212
    .end local v5    # "tmp":[C
    :goto_12c
    const/4 v3, 0x0

    .line 213
    invoke-virtual {p0, v2, v8}, load(IZ)Z

    move-result v6

    if-eqz v6, :cond_13

    goto/16 :goto_59

    .line 209
    :cond_135
    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 210
    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 209
    invoke-static {v6, v3, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_12c
.end method

.method public scanQName(Lmf/org/apache/xerces/xni/QName;)Z
    .registers 24
    .param p1, "qname"    # Lmf/org/apache/xerces/xni/QName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2b

    .line 571
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, load(IZ)Z

    .line 575
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v10, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 576
    .local v10, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    aget-char v3, v17, v10

    .line 578
    .local v3, "ch":C
    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v17

    if-eqz v17, :cond_ce

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_222

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-char v3, v17, v18

    .line 581
    const/4 v10, 0x0

    .line 582
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, load(IZ)Z

    move-result v17

    if-eqz v17, :cond_222

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v17 .. v20}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v9

    .line 585
    .local v9, "name":Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v9, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/16 v17, 0x1

    .line 747
    .end local v9    # "name":Ljava/lang/String;
    :goto_cd
    return v17

    .line 590
    :cond_ce
    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v17

    if-eqz v17, :cond_21e

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_146

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-char v3, v17, v18

    .line 593
    const/4 v10, 0x0

    .line 594
    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, load(IZ)Z

    move-result v17

    if-eqz v17, :cond_146

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 597
    const/16 v17, 0x0

    goto :goto_cd

    .line 600
    :cond_146
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    aget-char v4, v17, v18

    .line 601
    .local v4, "ch2":C
    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v17

    if-eqz v17, :cond_170

    .line 602
    invoke-static {v3, v4}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v17

    if-nez v17, :cond_188

    .line 603
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 604
    const/16 v17, 0x0

    goto/16 :goto_cd

    .line 606
    :cond_188
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_222

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-char v3, v17, v18

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    const/16 v18, 0x1

    aput-char v4, v17, v18

    .line 609
    const/4 v10, 0x0

    .line 610
    const/16 v17, 0x2

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, load(IZ)Z

    move-result v17

    if-eqz v17, :cond_222

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x2

    invoke-virtual/range {v17 .. v20}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v9

    .line 613
    .restart local v9    # "name":Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v9, v9, v2}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    const/16 v17, 0x1

    goto/16 :goto_cd

    .line 619
    .end local v4    # "ch2":C
    .end local v9    # "name":Ljava/lang/String;
    :cond_21e
    const/16 v17, 0x0

    goto/16 :goto_cd

    .line 622
    :cond_222
    const/4 v5, -0x1

    .line 623
    .local v5, "index":I
    const/4 v14, 0x0

    .line 625
    .local v14, "sawIncompleteSurrogatePair":Z
    :cond_224
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    aget-char v3, v17, v18

    .line 626
    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v17

    if-eqz v17, :cond_3e8

    .line 627
    const/16 v17, 0x3a

    move/from16 v0, v17

    if-ne v3, v0, :cond_329

    .line 628
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_31f

    .line 715
    :cond_250
    :goto_250
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v7, v17, v10

    .line 716
    .local v7, "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move/from16 v18, v0

    add-int v18, v18, v7

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 718
    if-lez v7, :cond_5d9

    .line 719
    const/4 v11, 0x0

    .line 720
    .local v11, "prefix":Ljava/lang/String;
    const/4 v8, 0x0

    .line 721
    .local v8, "localpart":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10, v7}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v13

    .line 723
    .local v13, "rawname":Ljava/lang/String;
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_5d6

    .line 724
    sub-int v12, v5, v10

    .line 725
    .local v12, "prefixLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v10, v12}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v11

    .line 727
    sub-int v17, v7, v12

    add-int/lit8 v6, v17, -0x1

    .line 728
    .local v6, "len":I
    add-int/lit8 v15, v5, 0x1

    .line 729
    .local v15, "startLocal":I
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    aget-char v17, v17, v15

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NCNameStart(I)Z

    move-result v17

    if-nez v17, :cond_2f4

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    aget-char v17, v17, v15

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v17

    if-eqz v17, :cond_2e2

    .line 731
    if-eqz v14, :cond_2f4

    .line 732
    :cond_2e2
    move-object/from16 v0, p0

    iget-object v0, v0, fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v17, v0

    const-string/jumbo v18, "http://www.w3.org/TR/1998/REC-xml-19980210"

    .line 733
    const-string v19, "IllegalQName"

    .line 734
    const/16 v20, 0x0

    .line 735
    const/16 v21, 0x2

    .line 732
    invoke-virtual/range {v17 .. v21}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    .line 737
    :cond_2f4
    move-object/from16 v0, p0

    iget-object v0, v0, fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    .line 738
    add-int/lit8 v19, v5, 0x1

    .line 737
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v6}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v8

    .line 744
    .end local v6    # "len":I
    .end local v12    # "prefixLength":I
    .end local v15    # "startLocal":I
    :goto_312
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v8, v13, v1}, Lmf/org/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const/16 v17, 0x1

    goto/16 :goto_cd

    .line 631
    .end local v7    # "length":I
    .end local v8    # "localpart":Ljava/lang/String;
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v13    # "rawname":Ljava/lang/String;
    :cond_31f
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v5, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 633
    :cond_329
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_224

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v7, v17, v10

    .line 635
    .restart local v7    # "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v7, v0, :cond_3c4

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v16, v0

    .line 638
    .local v16, "tmp":[C
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    .line 639
    const/16 v18, 0x0

    .line 638
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 646
    .end local v16    # "tmp":[C
    :goto_3ae
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_3b5

    .line 647
    sub-int/2addr v5, v10

    .line 649
    :cond_3b5
    const/4 v10, 0x0

    .line 650
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, load(IZ)Z

    move-result v17

    if-eqz v17, :cond_224

    goto/16 :goto_250

    .line 643
    :cond_3c4
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 643
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3ae

    .line 655
    .end local v7    # "length":I
    :cond_3e8
    invoke-static {v3}, Lmf/org/apache/xerces/util/XML11Char;->isXML11NameHighSurrogate(I)Z

    move-result v17

    if-eqz v17, :cond_250

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_4d6

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v7, v17, v10

    .line 658
    .restart local v7    # "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v7, v0, :cond_4b2

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v16, v0

    .line 661
    .restart local v16    # "tmp":[C
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    .line 662
    const/16 v18, 0x0

    .line 661
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 669
    .end local v16    # "tmp":[C
    :goto_473
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_47a

    .line 670
    sub-int/2addr v5, v10

    .line 672
    :cond_47a
    const/4 v10, 0x0

    .line 673
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, load(IZ)Z

    move-result v17

    if-eqz v17, :cond_4d6

    .line 674
    const/4 v14, 0x1

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_250

    .line 666
    :cond_4b2
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 666
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_473

    .line 680
    .end local v7    # "length":I
    :cond_4d6
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    aget-char v4, v17, v18

    .line 681
    .restart local v4    # "ch2":C
    invoke-static {v4}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v17

    if-eqz v17, :cond_500

    .line 682
    invoke-static {v3, v4}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v17

    invoke-static/range {v17 .. v17}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Name(I)Z

    move-result v17

    if-nez v17, :cond_517

    .line 683
    :cond_500
    const/4 v14, 0x1

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto/16 :goto_250

    .line 687
    :cond_517
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    move/from16 v17, v0

    move/from16 v0, v18

    move/from16 v1, v17

    if-ne v0, v1, :cond_224

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    move/from16 v17, v0

    sub-int v7, v17, v10

    .line 689
    .restart local v7    # "length":I
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v7, v0, :cond_5b2

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    shl-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [C

    move-object/from16 v16, v0

    .line 692
    .restart local v16    # "tmp":[C
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    .line 693
    const/16 v18, 0x0

    .line 692
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v18

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    .line 700
    .end local v16    # "tmp":[C
    :goto_59c
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v5, v0, :cond_5a3

    .line 701
    sub-int/2addr v5, v10

    .line 703
    :cond_5a3
    const/4 v10, 0x0

    .line 704
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v1}, load(IZ)Z

    move-result v17

    if-eqz v17, :cond_224

    goto/16 :goto_250

    .line 697
    :cond_5b2
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v17, v0

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    .line 697
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v10, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_59c

    .line 742
    .end local v4    # "ch2":C
    .restart local v8    # "localpart":Ljava/lang/String;
    .restart local v11    # "prefix":Ljava/lang/String;
    .restart local v13    # "rawname":Ljava/lang/String;
    :cond_5d6
    move-object v8, v13

    goto/16 :goto_312

    .line 747
    .end local v8    # "localpart":Ljava/lang/String;
    .end local v11    # "prefix":Ljava/lang/String;
    .end local v13    # "rawname":Ljava/lang/String;
    :cond_5d9
    const/16 v17, 0x0

    goto/16 :goto_cd
.end method

.method public skipChar(I)Z
    .registers 10
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x85

    const/16 v6, 0xa

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1270
    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v5, :cond_13

    .line 1271
    invoke-virtual {p0, v3, v2}, load(IZ)Z

    .line 1275
    :cond_13
    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v4, v5

    .line 1276
    .local v0, "cc":I
    if-ne v0, p1, :cond_3f

    .line 1277
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1278
    if-ne p1, v6, :cond_36

    .line 1279
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1280
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v2, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1309
    :goto_35
    return v2

    .line 1283
    :cond_36
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_35

    .line 1287
    :cond_3f
    if-ne p1, v6, :cond_64

    const/16 v4, 0x2028

    if-eq v0, v4, :cond_47

    if-ne v0, v7, :cond_64

    :cond_47
    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_64

    .line 1288
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1289
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1290
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v2, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_35

    .line 1293
    :cond_64
    if-ne p1, v6, :cond_ad

    const/16 v4, 0xd

    if-ne v0, v4, :cond_ad

    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 1295
    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v4, v5, :cond_86

    .line 1296
    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v4, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v5, v0

    aput-char v5, v4, v3

    .line 1297
    invoke-virtual {p0, v2, v3}, load(IZ)Z

    .line 1299
    :cond_86
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v3, v5

    .line 1300
    .local v1, "ccc":I
    if-eq v1, v6, :cond_98

    if-ne v1, v7, :cond_a0

    .line 1301
    :cond_98
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1303
    :cond_a0
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1304
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v2, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_35

    .end local v1    # "ccc":I
    :cond_ad
    move v2, v3

    .line 1309
    goto :goto_35
.end method

.method public skipSpaces()Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x85

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1330
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_15

    .line 1331
    invoke-virtual {p0, v4, v3}, load(IZ)Z

    .line 1335
    :cond_15
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v6

    .line 1338
    .local v0, "c":I
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->isExternal()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 1339
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Space(I)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 1341
    :cond_2d
    const/4 v2, 0x0

    .line 1343
    .local v2, "entityChanged":Z
    if-eq v0, v8, :cond_38

    if-eq v0, v9, :cond_38

    if-eq v0, v10, :cond_38

    const/16 v5, 0x2028

    if-ne v0, v5, :cond_a9

    .line 1344
    :cond_38
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1345
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v3, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1346
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_65

    .line 1347
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v6, v0

    aput-char v6, v5, v4

    .line 1348
    invoke-virtual {p0, v3, v3}, load(IZ)Z

    move-result v2

    .line 1349
    if-nez v2, :cond_65

    .line 1352
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1353
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1356
    :cond_65
    if-ne v0, v9, :cond_81

    .line 1359
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v1, v5, v7

    .line 1360
    .local v1, "cc":I
    if-eq v1, v8, :cond_81

    if-eq v1, v10, :cond_81

    .line 1361
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1369
    .end local v1    # "cc":I
    :cond_81
    :goto_81
    if-nez v2, :cond_8b

    .line 1370
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1371
    :cond_8b
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_98

    .line 1372
    invoke-virtual {p0, v4, v3}, load(IZ)Z

    .line 1374
    :cond_98
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v6

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Space(I)Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1411
    .end local v2    # "entityChanged":Z
    :goto_a8
    return v3

    .line 1366
    .restart local v2    # "entityChanged":Z
    :cond_a9
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_81

    .line 1379
    .end local v2    # "entityChanged":Z
    :cond_b2
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 1381
    :cond_b8
    const/4 v2, 0x0

    .line 1383
    .restart local v2    # "entityChanged":Z
    if-ne v0, v8, :cond_110

    .line 1384
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->lineNumber:I

    .line 1385
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v3, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    .line 1386
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_e8

    .line 1387
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    int-to-char v6, v0

    aput-char v6, v5, v4

    .line 1388
    invoke-virtual {p0, v3, v3}, load(IZ)Z

    move-result v2

    .line 1389
    if-nez v2, :cond_e8

    .line 1392
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1393
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iput v4, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1401
    :cond_e8
    :goto_e8
    if-nez v2, :cond_f2

    .line 1402
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    .line 1403
    :cond_f2
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_ff

    .line 1404
    invoke-virtual {p0, v4, v3}, load(IZ)Z

    .line 1406
    :cond_ff
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v6

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-nez v5, :cond_b8

    goto :goto_a8

    .line 1398
    :cond_110
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    goto :goto_e8

    .end local v2    # "entityChanged":Z
    :cond_119
    move v3, v4

    .line 1411
    goto :goto_a8
.end method

.method public skipString(Ljava/lang/String;)Z
    .registers 11
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1431
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_f

    .line 1432
    invoke-virtual {p0, v3, v4}, load(IZ)Z

    .line 1436
    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 1437
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    if-lt v1, v2, :cond_1f

    .line 1454
    iget-object v3, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    add-int/2addr v5, v2

    iput v5, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->columnNumber:I

    move v3, v4

    .line 1455
    :goto_1e
    return v3

    .line 1438
    :cond_1f
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v7, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v8, v7, 0x1

    iput v8, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    aget-char v0, v5, v7

    .line 1439
    .local v0, "c":C
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_3d

    .line 1440
    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_1e

    .line 1443
    :cond_3d
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_7a

    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    if-ne v5, v6, :cond_7a

    .line 1444
    iget-object v5, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v5, v5, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    iget-object v6, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v6, v6, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->count:I

    sub-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    iget-object v7, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-object v7, v7, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->ch:[C

    add-int/lit8 v8, v1, 0x1

    invoke-static {v5, v6, v7, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1447
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5, v3}, load(IZ)Z

    move-result v5

    if-eqz v5, :cond_7a

    .line 1448
    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->startPosition:I

    .line 1449
    iget-object v4, p0, fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    add-int/lit8 v6, v1, 0x1

    sub-int/2addr v5, v6

    iput v5, v4, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->position:I

    goto :goto_1e

    .line 1437
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method
