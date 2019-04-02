.class public Landroid/support/v8/renderscript/Element$Builder;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mArraySizes:[I

.field mCount:I

.field mElementNames:[Ljava/lang/String;

.field mElements:[Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mSkipPadding:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 2
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    const/16 v1, 0x8

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput-object p1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 934
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    .line 935
    new-array v0, v1, [Landroid/support/v8/renderscript/Element;

    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 936
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 937
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    .line 938
    return-void
.end method


# virtual methods
.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;)Landroid/support/v8/renderscript/Element$Builder;
    .locals 1
    .param p1, "element"    # Landroid/support/v8/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 992
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Element$Builder;->add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;

    move-result-object v0

    return-object v0
.end method

.method public add(Landroid/support/v8/renderscript/Element;Ljava/lang/String;I)Landroid/support/v8/renderscript/Element$Builder;
    .locals 7
    .param p1, "element"    # Landroid/support/v8/renderscript/Element;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "arraySize"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 948
    if-ge p3, v6, :cond_0

    .line 949
    new-instance v3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v4, "Array size cannot be less than 1."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 953
    :cond_0
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    if-eqz v3, :cond_1

    .line 954
    const-string v3, "#padding_"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 955
    iput v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    .line 982
    :goto_0
    return-object p0

    .line 960
    :cond_1
    iget v3, p1, Landroid/support/v8/renderscript/Element;->mVectorSize:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    .line 961
    iput v6, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    .line 966
    :goto_1
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 967
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v1, v3, [Landroid/support/v8/renderscript/Element;

    .line 968
    .local v1, "e":[Landroid/support/v8/renderscript/Element;
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v2, v3, [Ljava/lang/String;

    .line 969
    .local v2, "s":[Ljava/lang/String;
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x8

    new-array v0, v3, [I

    .line 970
    .local v0, "as":[I
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 971
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 972
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 973
    iput-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    .line 974
    iput-object v2, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    .line 975
    iput-object v0, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    .line 977
    .end local v0    # "as":[I
    .end local v1    # "e":[Landroid/support/v8/renderscript/Element;
    .end local v2    # "s":[Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput-object p1, v3, v4

    .line 978
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput-object p2, v3, v4

    .line 979
    iget-object v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    aput p3, v3, v4

    .line 980
    iget v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    goto :goto_0

    .line 963
    :cond_3
    iput v5, p0, Landroid/support/v8/renderscript/Element$Builder;->mSkipPadding:I

    goto :goto_1
.end method

.method public create()Landroid/support/v8/renderscript/Element;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 1002
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 1003
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v5, v1, [Landroid/support/v8/renderscript/Element;

    .line 1004
    .local v5, "ein":[Landroid/support/v8/renderscript/Element;
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v6, v1, [Ljava/lang/String;

    .line 1005
    .local v6, "sin":[Ljava/lang/String;
    iget v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    new-array v7, v1, [I

    .line 1006
    .local v7, "asin":[I
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElements:[Landroid/support/v8/renderscript/Element;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1007
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mElementNames:[Ljava/lang/String;

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v9, v6, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1008
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mArraySizes:[I

    iget v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mCount:I

    invoke-static {v1, v9, v7, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1010
    array-length v1, v5

    new-array v8, v1, [J

    .line 1011
    .local v8, "ids":[J
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    array-length v1, v5

    if-ge v0, v1, :cond_0

    .line 1012
    aget-object v1, v5, v0

    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1, v4}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v10

    aput-wide v10, v8, v0

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1, v8, v6, v7}, Landroid/support/v8/renderscript/RenderScript;->nElementCreate2([J[Ljava/lang/String;[I)J

    move-result-wide v2

    .line 1016
    .local v2, "id":J
    new-instance v1, Landroid/support/v8/renderscript/Element;

    iget-object v4, p0, Landroid/support/v8/renderscript/Element$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct/range {v1 .. v7}, Landroid/support/v8/renderscript/Element;-><init>(JLandroid/support/v8/renderscript/RenderScript;[Landroid/support/v8/renderscript/Element;[Ljava/lang/String;[I)V

    return-object v1
.end method
