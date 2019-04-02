.class public final Landroid/support/v8/renderscript/ScriptGroup$Input;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field mArgIndex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mFieldID:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Closure;",
            "Landroid/support/v8/renderscript/Script$FieldID;",
            ">;>;"
        }
    .end annotation
.end field

.field mValue:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    .line 366
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    .line 367
    return-void
.end method


# virtual methods
.method addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;I)V
    .locals 2
    .param p1, "closure"    # Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .param p2, "index"    # I

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    return-void
.end method

.method addReference(Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;)V
    .locals 2
    .param p1, "closure"    # Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .param p2, "fieldID"    # Landroid/support/v8/renderscript/Script$FieldID;

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    return-void
.end method

.method get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method set(Ljava/lang/Object;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 378
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mValue:Ljava/lang/Object;

    .line 379
    iget-object v5, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mArgIndex:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 380
    .local v4, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/v8/renderscript/ScriptGroup$Closure;Ljava/lang/Integer;>;"
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    .line 381
    .local v0, "closure":Landroid/support/v8/renderscript/ScriptGroup$Closure;
    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 382
    .local v2, "index":I
    invoke-virtual {v0, v2, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->setArg(ILjava/lang/Object;)V

    goto :goto_0

    .line 384
    .end local v0    # "closure":Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .end local v2    # "index":I
    .end local v4    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/v8/renderscript/ScriptGroup$Closure;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v5, p0, Landroid/support/v8/renderscript/ScriptGroup$Input;->mFieldID:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 385
    .local v3, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;>;"
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Closure;

    .line 386
    .restart local v0    # "closure":Landroid/support/v8/renderscript/ScriptGroup$Closure;
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Landroid/support/v8/renderscript/Script$FieldID;

    .line 387
    .local v1, "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    invoke-virtual {v0, v1, p1}, Landroid/support/v8/renderscript/ScriptGroup$Closure;->setGlobal(Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V

    goto :goto_1

    .line 389
    .end local v0    # "closure":Landroid/support/v8/renderscript/ScriptGroup$Closure;
    .end local v1    # "fieldID":Landroid/support/v8/renderscript/Script$FieldID;
    .end local v3    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/support/v8/renderscript/ScriptGroup$Closure;Landroid/support/v8/renderscript/Script$FieldID;>;"
    :cond_1
    return-void
.end method
