.class public Landroid/support/v8/renderscript/Element;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Element$Builder;,
        Landroid/support/v8/renderscript/Element$DataKind;,
        Landroid/support/v8/renderscript/Element$DataType;
    }
.end annotation


# instance fields
.field mArraySizes:[I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/support/v8/renderscript/Element;

.field mKind:Landroid/support/v8/renderscript/Element$DataKind;

.field mNormalized:Z

.field mOffsetInBytes:[I

.field mSize:I

.field mType:Landroid/support/v8/renderscript/Element$DataType;

.field mVectorSize:I

.field mVisibleElementMap:[I


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 754
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 755
    return-void
.end method

.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p4, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p5, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;
    .param p6, "norm"    # Z
    .param p7, "size"    # I

    .prologue
    .line 735
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 736
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    if-eq p4, v0, :cond_1

    .line 739
    const/4 v0, 0x3

    if-ne p7, v0, :cond_0

    .line 740
    iget v0, p4, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 747
    :goto_0
    iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    .line 748
    iput-object p5, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    .line 749
    iput-boolean p6, p0, Landroid/support/v8/renderscript/Element;->mNormalized:Z

    .line 750
    iput p7, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    .line 751
    return-void

    .line 742
    :cond_0
    iget v0, p4, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    mul-int/2addr v0, p7

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    goto :goto_0

    .line 745
    :cond_1
    iget v0, p4, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    iput v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    goto :goto_0
.end method

.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p4, "e"    # [Landroid/support/v8/renderscript/Element;
    .param p5, "n"    # [Ljava/lang/String;
    .param p6, "as"    # [I

    .prologue
    .line 718
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 719
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 720
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    .line 721
    iput-object p4, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 722
    iput-object p5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    .line 723
    iput-object p6, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    .line 724
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    .line 725
    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    .line 726
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    .line 727
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 728
    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    iget v2, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    aput v2, v1, v0

    .line 729
    iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/support/v8/renderscript/Element;->mSize:I

    iget-object v3, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    aget v3, v3, v0

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    .line 727
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 731
    :cond_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Element;->updateVisibleSubElements()V

    .line 732
    return-void
.end method

.method public static ALLOCATION(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 424
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    .line 426
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ALLOCATION:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 446
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    .line 448
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_A_8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static BOOLEAN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 318
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 319
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->BOOLEAN:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    .line 321
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_BOOLEAN:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static ELEMENT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 409
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 410
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    .line 412
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ELEMENT:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 395
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 396
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    .line 398
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 487
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 488
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    .line 490
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 494
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 495
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 501
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 502
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    .line 504
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_FLOAT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    .line 405
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_F64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 509
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    .line 511
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 515
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 516
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    .line 518
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static F64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 522
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 523
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    .line 525
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_DOUBLE_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 360
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 361
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    .line 363
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I16:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 592
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 593
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    .line 595
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 599
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 600
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    .line 602
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I16_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 606
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 607
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    .line 609
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SHORT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 375
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    .line 377
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 634
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 635
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    .line 637
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 641
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 642
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    .line 644
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 648
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 649
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    .line 651
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_INT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 388
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 389
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    .line 391
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 676
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 677
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    .line 679
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 683
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 684
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    .line 686
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 690
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 691
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    .line 693
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_LONG_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 346
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    .line 349
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_I8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 550
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 551
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    .line 553
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 557
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 558
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    .line 560
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static I8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 564
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 565
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_CHAR_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_2X2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 711
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 712
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_2X2:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    .line 714
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_2X2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_3X3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 704
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 705
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_3X3:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    .line 707
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_3X3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static MATRIX_4X4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 697
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 698
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->MATRIX_4X4:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    .line 700
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_MATRIX_4X4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 473
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 474
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_4444:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_5551(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 466
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 467
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    .line 469
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_5551:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 480
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 481
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    .line 483
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGBA_8888:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 452
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 453
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    .line 455
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_565:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static RGB_888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 459
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 460
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    .line 462
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_RGB_888:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static SAMPLER(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 431
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    .line 433
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SAMPLER:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static SCRIPT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 437
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 438
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    .line 440
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_SCRIPT:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static TYPE(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 416
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 417
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    .line 419
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_TYPE:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 353
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 354
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    .line 356
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U16:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 571
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 572
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 579
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    .line 581
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U16_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 585
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 586
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    .line 588
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_USHORT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 368
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    .line 370
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U32:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 613
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 614
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    .line 616
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 620
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 621
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    .line 623
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 627
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 628
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    .line 630
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UINT_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 381
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 382
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    .line 384
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U64:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 655
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 656
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    .line 658
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 662
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 663
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    .line 665
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U64_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 669
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 670
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    .line 672
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_ULONG_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 332
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 333
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Element;->createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    .line 335
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_U8:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 530
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    .line 532
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_2:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 536
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 537
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    .line 539
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_3:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 543
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    if-nez v0, :cond_0

    .line 544
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/Element;->createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    .line 546
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/RenderScript;->mElement_UCHAR_4:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public static createPixel(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;)Landroid/support/v8/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "dk"    # Landroid/support/v8/renderscript/Element$DataKind;

    .prologue
    .line 837
    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_L:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_LA:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_0

    .line 844
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported DataKind"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 846
    :cond_0
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-eq v0, v2, :cond_1

    .line 851
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Unsupported DataType"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 853
    :cond_1
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_6_5:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_2

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_2

    .line 854
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 856
    :cond_2
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_5_5_5_1:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_3

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_3

    .line 857
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 859
    :cond_3
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_4_4_4_4:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_4

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_4

    .line 860
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 862
    :cond_4
    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_DEPTH:Landroid/support/v8/renderscript/Element$DataKind;

    move-object/from16 v0, p2

    if-eq v0, v2, :cond_5

    .line 864
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Bad kind and type combo"

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 867
    :cond_5
    const/4 v8, 0x1

    .line 868
    .local v8, "size":I
    sget-object v2, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataKind:[I

    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/Element$DataKind;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 880
    :goto_0
    const/4 v7, 0x1

    .line 881
    .local v7, "norm":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    move-object/from16 v0, p2

    iget v6, v0, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    .line 882
    .local v10, "id":J
    new-instance v9, Landroid/support/v8/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Landroid/support/v8/renderscript/Element;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    return-object v9

    .line 870
    .end local v7    # "norm":Z
    .end local v10    # "id":J
    :pswitch_0
    const/4 v8, 0x2

    .line 871
    goto :goto_0

    .line 873
    :pswitch_1
    const/4 v8, 0x3

    .line 874
    goto :goto_0

    .line 876
    :pswitch_2
    const/4 v8, 0x4

    goto :goto_0

    .line 868
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static createUser(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;)Landroid/support/v8/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;

    .prologue
    .line 773
    sget-object v14, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    .line 774
    .local v14, "dk":Landroid/support/v8/renderscript/Element$DataKind;
    const/4 v7, 0x0

    .line 775
    .local v7, "norm":Z
    const/4 v8, 0x1

    .line 776
    .local v8, "vecSize":I
    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    iget v6, v14, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    .line 777
    .local v10, "id":J
    new-instance v9, Landroid/support/v8/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Landroid/support/v8/renderscript/Element;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    return-object v9
.end method

.method public static createVector(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;I)Landroid/support/v8/renderscript/Element;
    .locals 17
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "dt"    # Landroid/support/v8/renderscript/Element$DataType;
    .param p2, "size"    # I

    .prologue
    .line 794
    const/4 v2, 0x2

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x4

    move/from16 v0, p2

    if-le v0, v2, :cond_1

    .line 795
    :cond_0
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Vector size out of range 2-4."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 798
    :cond_1
    sget-object v2, Landroid/support/v8/renderscript/Element$1;->$SwitchMap$android$support$v8$renderscript$Element$DataType:[I

    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/Element$DataType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 818
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "Cannot create vector of non-primitive type."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 811
    :pswitch_0
    sget-object v14, Landroid/support/v8/renderscript/Element$DataKind;->USER:Landroid/support/v8/renderscript/Element$DataKind;

    .line 812
    .local v14, "dk":Landroid/support/v8/renderscript/Element$DataKind;
    const/4 v7, 0x0

    .line 813
    .local v7, "norm":Z
    move-object/from16 v0, p1

    iget v2, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    int-to-long v4, v2

    iget v6, v14, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    move-object/from16 v3, p0

    move/from16 v8, p2

    invoke-virtual/range {v3 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate(JIZI)J

    move-result-wide v10

    .line 814
    .local v10, "id":J
    new-instance v9, Landroid/support/v8/renderscript/Element;

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move v15, v7

    move/from16 v16, p2

    invoke-direct/range {v9 .. v16}, Landroid/support/v8/renderscript/Element;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element$DataType;Landroid/support/v8/renderscript/Element$DataKind;ZI)V

    return-object v9

    .line 798
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateVisibleSubElements()V
    .locals 8

    .prologue
    const/16 v7, 0x23

    const/4 v6, 0x0

    .line 75
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-nez v5, :cond_1

    .line 95
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v4, 0x0

    .line 80
    .local v4, "noPaddingFieldCount":I
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    array-length v3, v5

    .line 82
    .local v3, "fieldCount":I
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 83
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_2

    .line 84
    add-int/lit8 v4, v4, 0x1

    .line 82
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_3
    new-array v5, v4, [I

    iput-object v5, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    .line 90
    const/4 v0, 0x0

    const/4 v1, 0x0

    .local v1, "ctNoPadding":I
    move v2, v1

    .end local v1    # "ctNoPadding":I
    .local v2, "ctNoPadding":I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 91
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_4

    .line 92
    iget-object v5, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    aput v0, v5, v2

    .line 90
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "ctNoPadding":I
    .restart local v2    # "ctNoPadding":I
    goto :goto_1

    :cond_4
    move v1, v2

    .end local v2    # "ctNoPadding":I
    .restart local v1    # "ctNoPadding":I
    goto :goto_2
.end method


# virtual methods
.method public getBytesSize()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    return v0
.end method

.method public getDataKind()Landroid/support/v8/renderscript/Element$DataKind;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    return-object v0
.end method

.method public getDataType()Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    return-object v0
.end method

.method public getDummyElement(Landroid/support/v8/renderscript/RenderScript;)J
    .locals 7
    .param p1, "mRS"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 762
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget v0, v0, Landroid/support/v8/renderscript/Element$DataType;->mID:I

    int-to-long v2, v0

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    iget v4, v0, Landroid/support/v8/renderscript/Element$DataKind;->mID:I

    iget-boolean v5, p0, Landroid/support/v8/renderscript/Element;->mNormalized:Z

    iget v6, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nIncElementCreate(JIZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSubElement(I)Landroid/support/v8/renderscript/Element;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 241
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 242
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementArraySize(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 271
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 275
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getSubElementCount()I
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 228
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getSubElementName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 255
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 258
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mElementNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSubElementOffsetBytes(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Element contains no sub-elements"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 290
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    array-length v0, v0

    if-lt p1, v0, :cond_2

    .line 291
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Illegal sub-element index"

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Element;->mOffsetInBytes:[I

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mVisibleElementMap:[I

    aget v1, v1, p1

    aget v0, v0, v1

    return v0
.end method

.method public getVectorSize()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    return v0
.end method

.method public isCompatible(Landroid/support/v8/renderscript/Element;)Z
    .locals 3
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    const/4 v0, 0x1

    .line 898
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/support/v8/renderscript/Element;->mSize:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->mSize:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    sget-object v2, Landroid/support/v8/renderscript/Element$DataType;->NONE:Landroid/support/v8/renderscript/Element$DataType;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    iget-object v2, p1, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    if-ne v1, v2, :cond_2

    iget v1, p0, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    iget v2, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    if-eq v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplex()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 206
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-nez v2, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v1

    .line 209
    :cond_1
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_1
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 210
    iget-object v2, p0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

    if-eqz v2, :cond_2

    .line 211
    const/4 v1, 0x1

    goto :goto_0

    .line 209
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
