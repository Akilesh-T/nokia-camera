.class public Landroid/support/v8/renderscript/Type$Builder;
.super Ljava/lang/Object;
.source "Type.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
    .locals 1
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    .line 297
    invoke-virtual {p2}, Landroid/support/v8/renderscript/Element;->checkValid()V

    .line 298
    iput-object p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 299
    iput-object p2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    .line 300
    return-void
.end method


# virtual methods
.method public create()Landroid/support/v8/renderscript/Type;
    .locals 12

    .prologue
    const/4 v2, 0x1

    .line 368
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-lez v1, :cond_2

    .line 369
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-lt v1, v2, :cond_0

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_1

    .line 370
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Both X and Y dimension required when Z is present."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_1
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_2

    .line 373
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps not supported with 3D types."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_2
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-lez v1, :cond_3

    .line 377
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-ge v1, v2, :cond_3

    .line 378
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "X dimension required when Y is present."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 381
    :cond_3
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v1, :cond_4

    .line 382
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-ge v1, v2, :cond_4

    .line 383
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Cube maps require 2D Types."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_4
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_6

    .line 388
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    if-eqz v1, :cond_6

    .line 389
    :cond_5
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "YUV only supports basic 2D."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 394
    :cond_6
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iget-object v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget v4, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iget v5, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iget v6, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v8, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iget v9, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v10

    .line 396
    .local v10, "id":J
    new-instance v0, Landroid/support/v8/renderscript/Type;

    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v10, v11, v1}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 398
    .local v0, "t":Landroid/support/v8/renderscript/Type;
    iget-object v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iput-object v1, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    .line 399
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iput v1, v0, Landroid/support/v8/renderscript/Type;->mDimX:I

    .line 400
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iput v1, v0, Landroid/support/v8/renderscript/Type;->mDimY:I

    .line 401
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iput v1, v0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    .line 402
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v1, v0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    .line 403
    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v1, v0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    .line 404
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    iput v1, v0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    .line 406
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    .line 407
    return-object v0
.end method

.method public setFaces(Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    .line 339
    return-object p0
.end method

.method public setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 333
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    .line 334
    return-object p0
.end method

.method public setX(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 309
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 310
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    .line 313
    return-object p0
.end method

.method public setY(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 317
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 318
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    .line 321
    return-object p0
.end method

.method public setYuvFormat(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 2
    .param p1, "yuvFormat"    # I

    .prologue
    .line 348
    sparse-switch p1, :sswitch_data_0

    .line 354
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Only NV21 and YV12 are supported.."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    :sswitch_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    .line 358
    return-object p0

    .line 348
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 325
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 326
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v1, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :cond_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    .line 329
    return-object p0
.end method
