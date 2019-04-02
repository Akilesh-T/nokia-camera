.class public Landroid/support/v8/renderscript/Script;
.super Landroid/support/v8/renderscript/BaseObj;
.source "Script.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/Script$LaunchOptions;,
        Landroid/support/v8/renderscript/Script$FieldBase;,
        Landroid/support/v8/renderscript/Script$Builder;,
        Landroid/support/v8/renderscript/Script$FieldID;,
        Landroid/support/v8/renderscript/Script$InvokeID;,
        Landroid/support/v8/renderscript/Script$KernelID;
    }
.end annotation


# instance fields
.field private final mFIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            ">;"
        }
    .end annotation
.end field

.field private final mIIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v8/renderscript/Script$InvokeID;",
            ">;"
        }
    .end annotation
.end field

.field private final mKIDs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/support/v8/renderscript/Script$KernelID;",
            ">;"
        }
    .end annotation
.end field

.field private mUseIncSupp:Z


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 315
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    .line 164
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    .line 317
    return-void
.end method


# virtual methods
.method public bindAllocation(Landroid/support/v8/renderscript/Allocation;I)V
    .locals 8
    .param p1, "va"    # Landroid/support/v8/renderscript/Allocation;
    .param p2, "slot"    # I

    .prologue
    .line 219
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 220
    if-eqz p1, :cond_0

    .line 221
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->nScriptBindAllocation(JJIZ)V

    .line 225
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v6, p2

    invoke-virtual/range {v1 .. v7}, Landroid/support/v8/renderscript/RenderScript;->nScriptBindAllocation(JJIZ)V

    goto :goto_0
.end method

.method protected createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;
    .locals 8
    .param p1, "slot"    # I
    .param p2, "e"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 174
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/Script$FieldID;

    .line 175
    .local v1, "f":Landroid/support/v8/renderscript/Script$FieldID;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 186
    .end local v1    # "f":Landroid/support/v8/renderscript/Script$FieldID;
    .local v0, "f":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 179
    .end local v0    # "f":Ljava/lang/Object;
    .restart local v1    # "f":Landroid/support/v8/renderscript/Script$FieldID;
    :cond_0
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v5, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v5}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    iget-boolean v5, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {v4, v6, v7, p1, v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptFieldIDCreate(JIZ)J

    move-result-wide v2

    .line 180
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 181
    new-instance v4, Landroid/support/v8/renderscript/RSDriverException;

    const-string v5, "Failed to create FieldID"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 184
    :cond_1
    new-instance v1, Landroid/support/v8/renderscript/Script$FieldID;

    .end local v1    # "f":Landroid/support/v8/renderscript/Script$FieldID;
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/v8/renderscript/Script$FieldID;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V

    .line 185
    .restart local v1    # "f":Landroid/support/v8/renderscript/Script$FieldID;
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mFIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 186
    .restart local v0    # "f":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected createInvokeID(I)Landroid/support/v8/renderscript/Script$InvokeID;
    .locals 8
    .param p1, "slot"    # I

    .prologue
    .line 130
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/Script$InvokeID;

    .line 131
    .local v1, "i":Landroid/support/v8/renderscript/Script$InvokeID;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 142
    .end local v1    # "i":Landroid/support/v8/renderscript/Script$InvokeID;
    .local v0, "i":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 135
    .end local v0    # "i":Ljava/lang/Object;
    .restart local v1    # "i":Landroid/support/v8/renderscript/Script$InvokeID;
    :cond_0
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v5, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v5}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, p1}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvokeIDCreate(JI)J

    move-result-wide v2

    .line 136
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 137
    new-instance v4, Landroid/support/v8/renderscript/RSDriverException;

    const-string v5, "Failed to create KernelID"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 140
    :cond_1
    new-instance v1, Landroid/support/v8/renderscript/Script$InvokeID;

    .end local v1    # "i":Landroid/support/v8/renderscript/Script$InvokeID;
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Landroid/support/v8/renderscript/Script$InvokeID;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V

    .line 141
    .restart local v1    # "i":Landroid/support/v8/renderscript/Script$InvokeID;
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mIIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 142
    .restart local v0    # "i":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
    .locals 8
    .param p1, "slot"    # I
    .param p2, "sig"    # I
    .param p3, "ein"    # Landroid/support/v8/renderscript/Element;
    .param p4, "eout"    # Landroid/support/v8/renderscript/Element;

    .prologue
    .line 91
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/Script$KernelID;

    .line 92
    .local v1, "k":Landroid/support/v8/renderscript/Script$KernelID;
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 104
    .end local v1    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    .local v0, "k":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 96
    .end local v0    # "k":Ljava/lang/Object;
    .restart local v1    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .end local v1    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v4}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptKernelIDCreate(JIIZ)J

    move-result-wide v2

    .line 97
    .local v2, "id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 98
    new-instance v4, Landroid/support/v8/renderscript/RSDriverException;

    const-string v5, "Failed to create KernelID"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    :cond_1
    new-instance v1, Landroid/support/v8/renderscript/Script$KernelID;

    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object v5, p0

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Landroid/support/v8/renderscript/Script$KernelID;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;II)V

    .line 103
    .restart local v1    # "k":Landroid/support/v8/renderscript/Script$KernelID;
    iget-object v4, p0, Landroid/support/v8/renderscript/Script;->mKIDs:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v1

    .line 104
    .restart local v0    # "k":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .locals 22
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 246
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 247
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "At least one of ain or aout is required to be non-null."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    :cond_0
    const-wide/16 v16, 0x0

    .line 251
    .local v16, "in_id":J
    const-wide/16 v18, 0x0

    .line 252
    .local v18, "out_id":J
    if-eqz p2, :cond_1

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 255
    :cond_1
    if-eqz p3, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 259
    :cond_2
    const/4 v10, 0x0

    .line 260
    .local v10, "params":[B
    if-eqz p4, :cond_3

    .line 261
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v10

    .line 264
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    if-eqz v2, :cond_4

    .line 265
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Script;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v6

    .line 266
    .local v6, "ainInc":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Script;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v8

    .line 267
    .local v8, "aoutInc":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEach(JIJJ[BZ)V

    .line 271
    .end local v6    # "ainInc":J
    .end local v8    # "aoutInc":J
    :goto_0
    return-void

    .line 269
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move/from16 v21, v0

    move/from16 v15, p1

    move-object/from16 v20, v10

    invoke-virtual/range {v12 .. v21}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEach(JIJJ[BZ)V

    goto :goto_0
.end method

.method protected forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 28
    .param p1, "slot"    # I
    .param p2, "ain"    # Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 283
    if-nez p2, :cond_0

    if-nez p3, :cond_0

    .line 284
    new-instance v2, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v3, "At least one of ain or aout is required to be non-null."

    invoke-direct {v2, v3}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 288
    :cond_0
    if-nez p5, :cond_1

    .line 289
    invoke-virtual/range {p0 .. p4}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    .line 312
    :goto_0
    return-void

    .line 292
    :cond_1
    const-wide/16 v16, 0x0

    .line 293
    .local v16, "in_id":J
    const-wide/16 v18, 0x0

    .line 294
    .local v18, "out_id":J
    if-eqz p2, :cond_2

    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    .line 297
    :cond_2
    if-eqz p3, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v18

    .line 301
    :cond_3
    const/4 v10, 0x0

    .line 302
    .local v10, "params":[B
    if-eqz p4, :cond_4

    .line 303
    invoke-virtual/range {p4 .. p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v10

    .line 305
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    if-eqz v2, :cond_5

    .line 306
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Script;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v6

    .line 307
    .local v6, "ainInc":J
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Script;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v8

    .line 308
    .local v8, "aoutInc":J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$000(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v11

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$100(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v12

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$200(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v13

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$300(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v14

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$400(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v15

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$500(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v16

    .end local v16    # "in_id":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move/from16 v17, v0

    move/from16 v5, p1

    invoke-virtual/range {v2 .. v17}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEachClipped(JIJJ[BIIIIIIZ)V

    goto :goto_0

    .line 310
    .end local v6    # "ainInc":J
    .end local v8    # "aoutInc":J
    .restart local v16    # "in_id":J
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v13

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$000(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v21

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$100(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v22

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$200(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v23

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$300(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v24

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$400(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v25

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$500(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move/from16 v27, v0

    move/from16 v15, p1

    move-object/from16 v20, v10

    invoke-virtual/range {v12 .. v27}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEachClipped(JIJJ[BIIIIIIZ)V

    goto/16 :goto_0
.end method

.method protected forEach(I[Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 326
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v8/renderscript/Script;->forEach(I[Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    .line 327
    return-void
.end method

.method protected forEach(I[Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 11
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "v"    # Landroid/support/v8/renderscript/FieldPacker;
    .param p5, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 337
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 338
    if-eqz p2, :cond_0

    .line 339
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p2, v1

    .line 340
    .local v0, "ain":Landroid/support/v8/renderscript/Allocation;
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v3, v0}, Landroid/support/v8/renderscript/RenderScript;->validateObject(Landroid/support/v8/renderscript/BaseObj;)V

    .line 339
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    .end local v0    # "ain":Landroid/support/v8/renderscript/Allocation;
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1, p3}, Landroid/support/v8/renderscript/RenderScript;->validateObject(Landroid/support/v8/renderscript/BaseObj;)V

    .line 345
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 346
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one of ain or aout is required to be non-null."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_1
    if-eqz p2, :cond_2

    .line 352
    array-length v1, p2

    new-array v5, v1, [J

    .line 353
    .local v5, "in_ids":[J
    const/4 v10, 0x0

    .local v10, "index":I
    :goto_1
    array-length v1, p2

    if-ge v10, v1, :cond_3

    .line 354
    aget-object v1, p2, v10

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v5, v10

    .line 353
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 357
    .end local v5    # "in_ids":[J
    .end local v10    # "index":I
    :cond_2
    const/4 v5, 0x0

    .line 360
    .restart local v5    # "in_ids":[J
    :cond_3
    const-wide/16 v6, 0x0

    .line 361
    .local v6, "out_id":J
    if-eqz p3, :cond_4

    .line 362
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    .line 365
    :cond_4
    const/4 v8, 0x0

    .line 366
    .local v8, "params":[B
    if-eqz p4, :cond_5

    .line 367
    invoke-virtual {p4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v8

    .line 370
    :cond_5
    const/4 v9, 0x0

    .line 371
    .local v9, "limits":[I
    if-eqz p5, :cond_6

    .line 372
    const/4 v1, 0x6

    new-array v9, v1, [I

    .line 374
    const/4 v1, 0x0

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$000(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v9, v1

    .line 375
    const/4 v1, 0x1

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$100(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v9, v1

    .line 376
    const/4 v1, 0x2

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$200(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v9, v1

    .line 377
    const/4 v1, 0x3

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$300(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v9, v1

    .line 378
    const/4 v1, 0x4

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$400(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v9, v1

    .line 379
    const/4 v1, 0x5

    invoke-static/range {p5 .. p5}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$500(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v9, v1

    .line 382
    :cond_6
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/support/v8/renderscript/RenderScript;->nScriptForEach(JI[JJ[B[I)V

    .line 383
    return-void
.end method

.method getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J
    .locals 12
    .param p1, "ain"    # Landroid/support/v8/renderscript/Allocation;

    .prologue
    .line 43
    const-wide/16 v8, 0x0

    .line 44
    .local v8, "dInElement":J
    const-wide/16 v4, 0x0

    .line 45
    .local v4, "dInType":J
    const-wide/16 v10, 0x0

    .line 46
    .local v10, "dummyAlloc":J
    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    .line 48
    .local v0, "inType":Landroid/support/v8/renderscript/Type;
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Element;->getDummyElement(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v8

    .line 49
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v0, v1, v8, v9}, Landroid/support/v8/renderscript/Type;->getDummyType(Landroid/support/v8/renderscript/RenderScript;J)J

    move-result-wide v4

    .line 50
    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v2

    mul-int v6, v1, v2

    .line 51
    .local v6, "xBytesSize":I
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nIncAllocationCreateTyped(JJI)J

    move-result-wide v10

    .line 52
    invoke-virtual {p1, v10, v11}, Landroid/support/v8/renderscript/Allocation;->setIncAllocID(J)V

    .line 55
    .end local v0    # "inType":Landroid/support/v8/renderscript/Type;
    .end local v6    # "xBytesSize":I
    :cond_0
    return-wide v10
.end method

.method protected invoke(I)V
    .locals 4
    .param p1, "slot"    # I

    .prologue
    .line 195
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvoke(JIZ)V

    .line 196
    return-void
.end method

.method protected invoke(ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 7
    .param p1, "slot"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 205
    if-eqz p2, :cond_0

    .line 206
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvokeV(JI[BZ)V

    .line 210
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/support/v8/renderscript/RenderScript;->nScriptInvoke(JIZ)V

    goto :goto_0
.end method

.method protected isIncSupp()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    return v0
.end method

.method protected reduce(I[Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 10
    .param p1, "slot"    # I
    .param p2, "ains"    # [Landroid/support/v8/renderscript/Allocation;
    .param p3, "aout"    # Landroid/support/v8/renderscript/Allocation;
    .param p4, "sc"    # Landroid/support/v8/renderscript/Script$LaunchOptions;

    .prologue
    .line 391
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 392
    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 393
    :cond_0
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "At least one input is required."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_1
    if-nez p3, :cond_2

    .line 397
    new-instance v1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v2, "aout is required to be non-null."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 400
    :cond_2
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p2, v1

    .line 401
    .local v0, "ain":Landroid/support/v8/renderscript/Allocation;
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v3, v0}, Landroid/support/v8/renderscript/RenderScript;->validateObject(Landroid/support/v8/renderscript/BaseObj;)V

    .line 400
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "ain":Landroid/support/v8/renderscript/Allocation;
    :cond_3
    array-length v1, p2

    new-array v5, v1, [J

    .line 405
    .local v5, "in_ids":[J
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    array-length v1, p2

    if-ge v9, v1, :cond_4

    .line 406
    aget-object v1, p2, v9

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1, v2}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    aput-wide v2, v5, v9

    .line 405
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 408
    :cond_4
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p3, v1}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    .line 410
    .local v6, "out_id":J
    const/4 v8, 0x0

    .line 411
    .local v8, "limits":[I
    if-eqz p4, :cond_5

    .line 412
    const/4 v1, 0x6

    new-array v8, v1, [I

    .line 414
    const/4 v1, 0x0

    invoke-static {p4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$000(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v8, v1

    .line 415
    const/4 v1, 0x1

    invoke-static {p4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$100(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v8, v1

    .line 416
    const/4 v1, 0x2

    invoke-static {p4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$200(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v8, v1

    .line 417
    const/4 v1, 0x3

    invoke-static {p4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$300(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v8, v1

    .line 418
    const/4 v1, 0x4

    invoke-static {p4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$400(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v8, v1

    .line 419
    const/4 v1, 0x5

    invoke-static {p4}, Landroid/support/v8/renderscript/Script$LaunchOptions;->access$500(Landroid/support/v8/renderscript/Script$LaunchOptions;)I

    move-result v2

    aput v2, v8, v1

    .line 422
    :cond_5
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    move v4, p1

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nScriptReduce(JI[JJ[I)V

    .line 423
    return-void
.end method

.method protected setIncSupp(Z)V
    .locals 0
    .param p1, "useInc"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    .line 33
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 6
    .param p1, "timeZone"    # Ljava/lang/String;

    .prologue
    .line 228
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    .line 230
    :try_start_0
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    iget-boolean v5, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetTimeZone(J[BZ)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setVar(ID)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "v"    # D

    .prologue
    .line 442
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarD(JIDZ)V

    .line 443
    return-void
.end method

.method public setVar(IF)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "v"    # F

    .prologue
    .line 432
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarF(JIFZ)V

    .line 433
    return-void
.end method

.method public setVar(II)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "v"    # I

    .prologue
    .line 452
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarI(JIIZ)V

    .line 453
    return-void
.end method

.method public setVar(IJ)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "v"    # J

    .prologue
    .line 462
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarJ(JIJZ)V

    .line 463
    return-void
.end method

.method public setVar(ILandroid/support/v8/renderscript/BaseObj;)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "o"    # Landroid/support/v8/renderscript/BaseObj;

    .prologue
    const-wide/16 v4, 0x0

    .line 482
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 483
    check-cast v0, Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getDummyAlloc(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v8

    .line 484
    .local v8, "oInc":J
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    if-nez p2, :cond_0

    :goto_0
    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarObj(JIJZ)V

    .line 488
    .end local v8    # "oInc":J
    :goto_1
    return-void

    .restart local v8    # "oInc":J
    :cond_0
    move-wide v4, v8

    .line 484
    goto :goto_0

    .line 486
    .end local v8    # "oInc":J
    :cond_1
    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    if-nez p2, :cond_2

    :goto_2
    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarObj(JIJZ)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p2, v3}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    goto :goto_2
.end method

.method public setVar(ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;

    .prologue
    .line 497
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v5

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarV(JI[BZ)V

    .line 498
    return-void
.end method

.method public setVar(ILandroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Element;[I)V
    .locals 20
    .param p1, "index"    # I
    .param p2, "v"    # Landroid/support/v8/renderscript/FieldPacker;
    .param p3, "e"    # Landroid/support/v8/renderscript/Element;
    .param p4, "dims"    # [I

    .prologue
    .line 509
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    if-eqz v2, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Element;->getDummyElement(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v8

    .line 511
    .local v8, "dElement":J
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move/from16 v6, p1

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[IZ)V

    .line 515
    .end local v8    # "dElement":J
    :goto_0
    return-void

    .line 513
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Element;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move/from16 v19, v0

    move/from16 v14, p1

    move-object/from16 v18, p4

    invoke-virtual/range {v11 .. v19}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarVE(JI[BJ[IZ)V

    goto :goto_0
.end method

.method public setVar(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "v"    # Z

    .prologue
    .line 472
    iget-object v1, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Script;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Script;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    if-eqz p2, :cond_0

    const/4 v5, 0x1

    :goto_0
    iget-boolean v6, p0, Landroid/support/v8/renderscript/Script;->mUseIncSupp:Z

    move v4, p1

    invoke-virtual/range {v1 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nScriptSetVarI(JIIZ)V

    .line 473
    return-void

    .line 472
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
