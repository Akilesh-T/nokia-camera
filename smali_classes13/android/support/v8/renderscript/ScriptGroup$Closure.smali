.class public final Landroid/support/v8/renderscript/ScriptGroup$Closure;
.super Landroid/support/v8/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFP:Landroid/support/v8/renderscript/FieldPacker;

.field private mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Landroid/support/v8/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

.field private mReturnValue:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 122
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 24
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "invokeID"    # Landroid/support/v8/renderscript/Script$InvokeID;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v8/renderscript/RenderScript;",
            "Landroid/support/v8/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p4, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 170
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "ScriptGroup2 not supported in this API level"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 174
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/support/v8/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/support/v8/renderscript/FieldPacker;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mFP:Landroid/support/v8/renderscript/FieldPacker;

    .line 176
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 177
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 178
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 180
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v21

    .line 182
    .local v21, "numValues":I
    move/from16 v0, v21

    new-array v0, v0, [J

    move-object/from16 v17, v0

    .line 183
    .local v17, "fieldIDs":[J
    move/from16 v0, v21

    new-array v9, v0, [J

    .line 184
    .local v9, "values":[J
    move/from16 v0, v21

    new-array v10, v0, [I

    .line 185
    .local v10, "sizes":[I
    move/from16 v0, v21

    new-array v11, v0, [J

    .line 186
    .local v11, "depClosures":[J
    move/from16 v0, v21

    new-array v12, v0, [J

    .line 188
    .local v12, "depFieldIDs":[J
    const/4 v6, 0x0

    .line 189
    .local v6, "i":I
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/Map$Entry;

    .line 190
    .local v20, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 191
    .local v8, "obj":Ljava/lang/Object;
    invoke-interface/range {v20 .. v20}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v8/renderscript/Script$FieldID;

    .line 192
    .local v7, "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v17, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 193
    invoke-direct/range {v4 .. v12}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 195
    add-int/lit8 v6, v6, 0x1

    .line 196
    goto :goto_0

    .line 198
    .end local v7    # "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v20    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Script$InvokeID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mFP:Landroid/support/v8/renderscript/FieldPacker;

    invoke-virtual {v4}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v16

    move-object/from16 v13, p1

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v13 .. v19}, Landroid/support/v8/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v22

    .line 201
    .local v22, "id":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 202
    return-void
.end method

.method constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 27
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "kernelID"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p3, "returnType"    # Landroid/support/v8/renderscript/Type;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v8/renderscript/RenderScript;",
            "Landroid/support/v8/renderscript/Script$KernelID;",
            "Landroid/support/v8/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p5, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v4, v5, v1}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 128
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    new-instance v4, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v5, "ScriptGroup2 not supported in this API level"

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    :cond_0
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 133
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    .line 134
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 135
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 137
    move-object/from16 v0, p4

    array-length v4, v0

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v5

    add-int v26, v4, v5

    .line 139
    .local v26, "numValues":I
    move/from16 v0, v26

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 140
    .local v18, "fieldIDs":[J
    move/from16 v0, v26

    new-array v9, v0, [J

    .line 141
    .local v9, "values":[J
    move/from16 v0, v26

    new-array v10, v0, [I

    .line 142
    .local v10, "sizes":[I
    move/from16 v0, v26

    new-array v11, v0, [J

    .line 143
    .local v11, "depClosures":[J
    move/from16 v0, v26

    new-array v12, v0, [J

    .line 146
    .local v12, "depFieldIDs":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p4

    array-length v4, v0

    if-ge v6, v4, :cond_1

    .line 147
    const-wide/16 v4, 0x0

    aput-wide v4, v18, v6

    .line 148
    const/4 v7, 0x0

    aget-object v8, p4, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 146
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 151
    :cond_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Map$Entry;

    .line 152
    .local v23, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 153
    .local v8, "obj":Ljava/lang/Object;
    invoke-interface/range {v23 .. v23}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v8/renderscript/Script$FieldID;

    .line 154
    .local v7, "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, v18, v6

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 155
    invoke-direct/range {v4 .. v12}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 157
    add-int/lit8 v6, v6, 0x1

    .line 158
    goto :goto_1

    .line 160
    .end local v7    # "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    .end local v8    # "obj":Ljava/lang/Object;
    .end local v23    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    :cond_2
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/support/v8/renderscript/Allocation;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v16

    move-object/from16 v13, p1

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-virtual/range {v13 .. v22}, Landroid/support/v8/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v24

    .line 163
    .local v24, "id":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 164
    return-void
.end method

.method private retrieveValueAndDependenceInfo(Landroid/support/v8/renderscript/RenderScript;ILandroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 6
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "fid"    # Landroid/support/v8/renderscript/Script$FieldID;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I
    .param p7, "depClosures"    # [J
    .param p8, "depFieldIDs"    # [J

    .prologue
    .line 210
    instance-of v4, p4, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-eqz v4, :cond_1

    move-object v0, p4

    .line 211
    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    .line 212
    .local v0, "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    invoke-virtual {v0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 213
    invoke-virtual {v0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getClosure()Landroid/support/v8/renderscript/ScriptGroup$Closure;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    aput-wide v4, p7, p2

    .line 214
    invoke-virtual {v0}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getFieldID()Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object v1

    .line 215
    .local v1, "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    :goto_0
    aput-wide v4, p8, p2

    .line 221
    .end local v0    # "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    .end local v1    # "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    :goto_1
    instance-of v4, p4, Landroid/support/v8/renderscript/ScriptGroup$Input;

    if-eqz v4, :cond_3

    move-object v2, p4

    .line 222
    check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$Input;

    .line 223
    .local v2, "unbound":Landroid/support/v8/renderscript/ScriptGroup$Input;
    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    array-length v4, v4

    if-ge p2, v4, :cond_2

    .line 224
    invoke-virtual {v2, p0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Input;->addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;I)V

    .line 228
    :goto_2
    const-wide/16 v4, 0x0

    aput-wide v4, p5, p2

    .line 229
    const/4 v4, 0x0

    aput v4, p6, p2

    .line 235
    .end local v2    # "unbound":Landroid/support/v8/renderscript/ScriptGroup$Input;
    :goto_3
    return-void

    .line 215
    .restart local v0    # "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    .restart local v1    # "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 217
    .end local v0    # "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    .end local v1    # "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    :cond_1
    const-wide/16 v4, 0x0

    aput-wide v4, p7, p2

    .line 218
    const-wide/16 v4, 0x0

    aput-wide v4, p8, p2

    goto :goto_1

    .line 226
    .restart local v2    # "unbound":Landroid/support/v8/renderscript/ScriptGroup$Input;
    :cond_2
    invoke-virtual {v2, p0, p3}, Landroid/support/v8/renderscript/ScriptGroup$Input;->addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;)V

    goto :goto_2

    .line 231
    .end local v2    # "unbound":Landroid/support/v8/renderscript/ScriptGroup$Input;
    :cond_3
    new-instance v3, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    invoke-direct {v3, p1, p4}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 232
    .local v3, "vs":Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-wide v4, v3, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    aput-wide v4, p5, p2

    .line 233
    iget v4, v3, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    aput v4, p6, p2

    goto :goto_3
.end method


# virtual methods
.method public getGlobal(Landroid/support/v8/renderscript/Script$FieldID;)Landroid/support/v8/renderscript/ScriptGroup$Future;
    .locals 3
    .param p1, "field"    # Landroid/support/v8/renderscript/Script$FieldID;

    .prologue
    .line 259
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    .line 261
    .local v0, "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    if-nez v0, :cond_1

    .line 266
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-eqz v2, :cond_0

    .line 268
    check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Future;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v1}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 270
    .restart local v1    # "obj":Ljava/lang/Object;
    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    .end local v0    # "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    invoke-direct {v0, p0, p1, v1}, Landroid/support/v8/renderscript/ScriptGroup$Future;-><init>(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V

    .line 271
    .restart local v0    # "f":Landroid/support/v8/renderscript/ScriptGroup$Future;
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public getReturn()Landroid/support/v8/renderscript/ScriptGroup$Future;
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Future;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/support/v8/renderscript/Allocation;

    invoke-direct {v0, p0, v1, v2}, Landroid/support/v8/renderscript/ScriptGroup$Future;-><init>(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

    .line 248
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/support/v8/renderscript/ScriptGroup$Future;

    return-object v0
.end method

.method setArg(ILjava/lang/Object;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 278
    instance-of v0, p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    .line 279
    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 281
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 282
    new-instance v7, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v7, v0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 283
    .local v7, "vs":Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    iget-wide v4, v7, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v6, v7, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    move v3, p1

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    .line 284
    return-void
.end method

.method setGlobal(Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 9
    .param p1, "fieldID"    # Landroid/support/v8/renderscript/Script$FieldID;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 287
    instance-of v1, p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    if-eqz v1, :cond_0

    .line 288
    check-cast p2, Landroid/support/v8/renderscript/ScriptGroup$Future;

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/support/v8/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 290
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 292
    .local v0, "vs":Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    iget-wide v6, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v8, v0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    invoke-virtual/range {v1 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    .line 293
    return-void
.end method
