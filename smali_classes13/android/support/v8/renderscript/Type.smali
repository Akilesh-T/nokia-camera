.class public Landroid/support/v8/renderscript/Type;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Type$Builder;,
        Landroid/support/v8/renderscript/Type$CubemapFace;
    }
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mElementCount:I


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 190
    return-void
.end method

.method public static createX(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Type;
    .locals 12
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "dimX"    # I

    .prologue
    const/4 v5, 0x0

    .line 211
    const/4 v1, 0x1

    if-ge p2, v1, :cond_0

    .line 212
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Dimension must be >= 1."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v6, v5

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v10

    .line 216
    .local v10, "id":J
    new-instance v0, Landroid/support/v8/renderscript/Type;

    invoke-direct {v0, v10, v11, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 217
    .local v0, "t":Landroid/support/v8/renderscript/Type;
    iput-object p1, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 218
    iput p2, v0, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 219
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 220
    return-object v0
.end method

.method public static createXY(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Type;
    .locals 12
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 235
    if-lt p2, v1, :cond_0

    if-ge p3, v1, :cond_1

    .line 236
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Dimension must be >= 1."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 239
    :cond_1
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    move-object v1, p0

    move v4, p2

    move v5, p3

    move v7, v6

    move v8, v6

    move v9, v6

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v10

    .line 240
    .local v10, "id":J
    new-instance v0, Landroid/support/v8/renderscript/Type;

    invoke-direct {v0, v10, v11, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 241
    .local v0, "t":Landroid/support/v8/renderscript/Type;
    iput-object p1, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 242
    iput p2, v0, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 243
    iput p3, v0, Landroid/support/v8/renderscript/Type;->mDimY:I

    .line 244
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 245
    return-object v0
.end method

.method public static createXYZ(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;III)Landroid/support/v8/renderscript/Type;
    .locals 14
    .param p0, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p1, "e"    # Landroid/support/v8/renderscript/Element;
    .param p2, "dimX"    # I
    .param p3, "dimY"    # I
    .param p4, "dimZ"    # I

    .prologue
    .line 261
    const/4 v3, 0x1

    move/from16 v0, p2

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p3

    if-lt v0, v3, :cond_0

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ge v0, v3, :cond_1

    .line 262
    :cond_0
    new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v4, "Dimension must be >= 1."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 265
    :cond_1
    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, p0

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v12

    .line 266
    .local v12, "id":J
    new-instance v2, Landroid/support/v8/renderscript/Type;

    invoke-direct {v2, v12, v13, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 267
    .local v2, "t":Landroid/support/v8/renderscript/Type;
    iput-object p1, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 268
    move/from16 v0, p2

    iput v0, v2, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 269
    move/from16 v0, p3

    iput v0, v2, Landroid/support/v8/renderscript/Type;->mDimY:I

    .line 270
    move/from16 v0, p4

    iput v0, v2, Landroid/support/v8/renderscript/Type;->mDimZ:I

    .line 271
    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 272
    return-object v2
.end method


# virtual methods
.method calcElementCount()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 151
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v2

    .line 152
    .local v2, "hasLod":Z
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v3

    .line 153
    .local v3, "x":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v4

    .line 154
    .local v4, "y":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v5

    .line 155
    .local v5, "z":I
    const/4 v1, 0x1

    .line 156
    .local v1, "faces":I
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 157
    const/4 v1, 0x6

    .line 159
    :cond_0
    if-nez v3, :cond_1

    .line 160
    const/4 v3, 0x1

    .line 162
    :cond_1
    if-nez v4, :cond_2

    .line 163
    const/4 v4, 0x1

    .line 165
    :cond_2
    if-nez v5, :cond_3

    .line 166
    const/4 v5, 0x1

    .line 169
    :cond_3
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int v0, v6, v1

    .line 171
    .local v0, "count":I
    :goto_0
    if-eqz v2, :cond_8

    if-gt v3, v7, :cond_4

    if-gt v4, v7, :cond_4

    if-le v5, v7, :cond_8

    .line 172
    :cond_4
    if-le v3, v7, :cond_5

    .line 173
    shr-int/lit8 v3, v3, 0x1

    .line 175
    :cond_5
    if-le v4, v7, :cond_6

    .line 176
    shr-int/lit8 v4, v4, 0x1

    .line 178
    :cond_6
    if-le v5, v7, :cond_7

    .line 179
    shr-int/lit8 v5, v5, 0x1

    .line 182
    :cond_7
    mul-int v6, v3, v4

    mul-int/2addr v6, v5

    mul-int/2addr v6, v1

    add-int/2addr v0, v6

    goto :goto_0

    .line 184
    :cond_8
    iput v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    .line 185
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getDummyType(Landroid/support/v8/renderscript/RenderScript;J)J
    .locals 10
    .param p1, "mRS"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "eid"    # J

    .prologue
    .line 197
    iget v4, p0, Landroid/support/v8/renderscript/Type;->mDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Type;->mDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    iget-boolean v8, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    iget v9, p0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    move-object v1, p1

    move-wide v2, p2

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nIncTypeCreate(JIIIZZI)J

    move-result-wide v0

    return-wide v0
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method
