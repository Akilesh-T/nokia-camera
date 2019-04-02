.class public final Landroid/support/v8/renderscript/ScriptGroup$Builder;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mKernelCount:I

.field private mLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;",
            ">;"
        }
    .end annotation
.end field

.field private mNodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v8/renderscript/ScriptGroup$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mRS:Landroid/support/v8/renderscript/RenderScript;

.field private mUseIncSupp:Z


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/support/v8/renderscript/RenderScript;

    .prologue
    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    .line 621
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mUseIncSupp:Z

    .line 632
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    .line 633
    return-void
.end method

.method private calcOrder()Z
    .locals 6

    .prologue
    .line 855
    const/4 v2, 0x1

    .line 856
    .local v2, "ret":Z
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .line 857
    .local v0, "n0":Landroid/support/v8/renderscript/ScriptGroup$Node;
    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 858
    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .line 859
    .local v1, "n1":Landroid/support/v8/renderscript/ScriptGroup$Node;
    const/4 v5, 0x0

    iput-boolean v5, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mSeen:Z

    goto :goto_1

    .line 861
    .end local v1    # "n1":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->calcOrderRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)Z

    move-result v4

    and-int/2addr v2, v4

    goto :goto_0

    .line 865
    .end local v0    # "n0":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_2
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;

    invoke-direct {v4, p0}, Landroid/support/v8/renderscript/ScriptGroup$Builder$1;-><init>(Landroid/support/v8/renderscript/ScriptGroup$Builder;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 871
    return v2
.end method

.method private calcOrderRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)Z
    .locals 5
    .param p1, "node0"    # Landroid/support/v8/renderscript/ScriptGroup$Node;
    .param p2, "depth"    # I

    .prologue
    .line 832
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mSeen:Z

    .line 833
    iget v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    if-ge v3, p2, :cond_0

    .line 834
    iput p2, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    .line 836
    :cond_0
    const/4 v2, 0x1

    .line 838
    .local v2, "ret":Z
    iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    .line 839
    .local v0, "link":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    const/4 v1, 0x0

    .line 840
    .local v1, "node1":Landroid/support/v8/renderscript/ScriptGroup$Node;
    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    if-eqz v4, :cond_2

    .line 841
    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    iget-object v4, v4, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {p0, v4}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 845
    :goto_1
    iget-boolean v4, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mSeen:Z

    if-eqz v4, :cond_3

    .line 846
    const/4 v2, 0x0

    .line 851
    .end local v0    # "link":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    .end local v1    # "node1":Landroid/support/v8/renderscript/ScriptGroup$Node;
    .end local v2    # "ret":Z
    :cond_1
    return v2

    .line 843
    .restart local v0    # "link":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    .restart local v1    # "node1":Landroid/support/v8/renderscript/ScriptGroup$Node;
    .restart local v2    # "ret":Z
    :cond_2
    iget-object v4, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    iget-object v4, v4, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {p0, v4}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v1

    goto :goto_1

    .line 848
    :cond_3
    iget v4, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOrder:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {p0, v1, v4}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->calcOrderRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)Z

    move-result v4

    and-int/2addr v2, v4

    .line 849
    goto :goto_0
.end method

.method private findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;
    .locals 4
    .param p1, "k"    # Landroid/support/v8/renderscript/Script$KernelID;

    .prologue
    .line 714
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 715
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .line 716
    .local v2, "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    const/4 v1, 0x0

    .local v1, "ct2":I
    :goto_1
    iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 717
    iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 722
    .end local v1    # "ct2":I
    .end local v2    # "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :goto_2
    return-object v2

    .line 716
    .restart local v1    # "ct2":I
    .restart local v2    # "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 714
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 722
    .end local v1    # "ct2":I
    .end local v2    # "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;
    .locals 2
    .param p1, "s"    # Landroid/support/v8/renderscript/Script;

    .prologue
    .line 705
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 706
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;

    iget-object v1, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mScript:Landroid/support/v8/renderscript/Script;

    if-ne p1, v1, :cond_0

    .line 707
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .line 710
    :goto_1
    return-object v1

    .line 705
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 710
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private mergeDAGs(II)V
    .locals 2
    .param p1, "valueUsed"    # I
    .param p2, "valueKilled"    # I

    .prologue
    .line 658
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 659
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;

    iget v1, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    if-ne v1, p2, :cond_0

    .line 660
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v8/renderscript/ScriptGroup$Node;

    iput p1, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 658
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    :cond_1
    return-void
.end method

.method private validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V
    .locals 5
    .param p1, "target"    # Landroid/support/v8/renderscript/ScriptGroup$Node;
    .param p2, "original"    # Landroid/support/v8/renderscript/ScriptGroup$Node;

    .prologue
    .line 638
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_0
    iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 639
    iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    .line 640
    .local v0, "cl":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    if-eqz v3, :cond_1

    .line 641
    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    iget-object v3, v3, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 642
    .local v2, "tn":Landroid/support/v8/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 643
    new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 645
    :cond_0
    invoke-direct {p0, v2, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V

    .line 647
    .end local v2    # "tn":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_1
    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    if-eqz v3, :cond_3

    .line 648
    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    iget-object v3, v3, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 649
    .restart local v2    # "tn":Landroid/support/v8/renderscript/ScriptGroup$Node;
    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 650
    new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v4, "Loops in group not allowed."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 652
    :cond_2
    invoke-direct {p0, v2, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V

    .line 638
    .end local v2    # "tn":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    .end local v0    # "cl":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    :cond_4
    return-void
.end method

.method private validateDAG()V
    .locals 6

    .prologue
    .line 686
    const/4 v0, 0x0

    .local v0, "ct":I
    :goto_0
    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 687
    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .line 688
    .local v3, "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    iget-object v4, v3, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 689
    iget-object v4, v3, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 690
    const-string v2, "Groups cannot contain unconnected scripts"

    .line 691
    .local v2, "msg":Ljava/lang/String;
    new-instance v4, Landroid/support/v8/renderscript/RSInvalidStateException;

    invoke-direct {v4, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 693
    .end local v2    # "msg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v0, 0x1

    invoke-direct {p0, v3, v4}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)V

    .line 686
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 696
    .end local v3    # "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_2
    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v8/renderscript/ScriptGroup$Node;

    iget v1, v4, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 697
    .local v1, "dagNumber":I
    const/4 v0, 0x0

    :goto_1
    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 698
    iget-object v4, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v8/renderscript/ScriptGroup$Node;

    iget v4, v4, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v4, v1, :cond_3

    .line 699
    new-instance v4, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v5, "Multiple DAGs in group not allowed."

    invoke-direct {v4, v5}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 697
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 702
    :cond_4
    return-void
.end method

.method private validateDAGRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)V
    .locals 4
    .param p1, "n"    # Landroid/support/v8/renderscript/ScriptGroup$Node;
    .param p2, "dagNumber"    # I

    .prologue
    .line 666
    iget v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    if-eq v3, p2, :cond_1

    .line 667
    iget v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    invoke-direct {p0, v3, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mergeDAGs(II)V

    .line 683
    :cond_0
    return-void

    .line 671
    :cond_1
    iput p2, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 672
    const/4 v1, 0x0

    .local v1, "ct":I
    :goto_0
    iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 673
    iget-object v3, p1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    .line 674
    .local v0, "cl":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    if-eqz v3, :cond_2

    .line 675
    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    iget-object v3, v3, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 676
    .local v2, "tn":Landroid/support/v8/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)V

    .line 678
    .end local v2    # "tn":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_2
    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    if-eqz v3, :cond_3

    .line 679
    iget-object v3, v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    iget-object v3, v3, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 680
    .restart local v2    # "tn":Landroid/support/v8/renderscript/ScriptGroup$Node;
    invoke-direct {p0, v2, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateDAGRecurse(Landroid/support/v8/renderscript/ScriptGroup$Node;I)V

    .line 672
    .end local v2    # "tn":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addConnection(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)Landroid/support/v8/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/support/v8/renderscript/Type;
    .param p2, "from"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/support/v8/renderscript/Script$FieldID;

    .prologue
    .line 771
    invoke-direct {p0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 772
    .local v1, "nf":Landroid/support/v8/renderscript/ScriptGroup$Node;
    if-nez v1, :cond_0

    .line 773
    new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v4, "From script not found."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 776
    :cond_0
    iget-object v3, p3, Landroid/support/v8/renderscript/Script$FieldID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {p0, v3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 777
    .local v2, "nt":Landroid/support/v8/renderscript/ScriptGroup$Node;
    if-nez v2, :cond_1

    .line 778
    new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v4, "To script not found."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 781
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)V

    .line 782
    .local v0, "cl":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$FieldID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    iget-object v3, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-direct {p0, v1, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V

    .line 788
    return-object p0
.end method

.method public addConnection(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Builder;
    .locals 5
    .param p1, "t"    # Landroid/support/v8/renderscript/Type;
    .param p2, "from"    # Landroid/support/v8/renderscript/Script$KernelID;
    .param p3, "to"    # Landroid/support/v8/renderscript/Script$KernelID;

    .prologue
    .line 805
    invoke-direct {p0, p2}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v1

    .line 806
    .local v1, "nf":Landroid/support/v8/renderscript/ScriptGroup$Node;
    if-nez v1, :cond_0

    .line 807
    new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v4, "From script not found."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 810
    :cond_0
    invoke-direct {p0, p3}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v2

    .line 811
    .local v2, "nt":Landroid/support/v8/renderscript/ScriptGroup$Node;
    if-nez v2, :cond_1

    .line 812
    new-instance v3, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v4, "To script not found."

    invoke-direct {v3, v4}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 815
    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)V

    .line 816
    .local v0, "cl":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    iget-object v3, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    new-instance v4, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    invoke-direct {v4, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;-><init>(Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Script$KernelID;Landroid/support/v8/renderscript/Script$KernelID;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    iget-object v3, v1, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    iget-object v3, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-direct {p0, v1, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateCycle(Landroid/support/v8/renderscript/ScriptGroup$Node;Landroid/support/v8/renderscript/ScriptGroup$Node;)V

    .line 822
    return-object p0
.end method

.method public addKernel(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Builder;
    .locals 3
    .param p1, "k"    # Landroid/support/v8/renderscript/Script$KernelID;

    .prologue
    .line 734
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    new-instance v1, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v2, "Kernels may not be added once connections exist."

    invoke-direct {v1, v2}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 738
    :cond_0
    iget-object v1, p1, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-virtual {v1}, Landroid/support/v8/renderscript/Script;->isIncSupp()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 739
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mUseIncSupp:Z

    .line 742
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script$KernelID;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 754
    :goto_0
    return-object p0

    .line 746
    :cond_2
    iget v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mKernelCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mKernelCount:I

    .line 747
    iget-object v1, p1, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {p0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->findNode(Landroid/support/v8/renderscript/Script;)Landroid/support/v8/renderscript/ScriptGroup$Node;

    move-result-object v0

    .line 748
    .local v0, "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    if-nez v0, :cond_3

    .line 750
    new-instance v0, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .end local v0    # "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    iget-object v1, p1, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/ScriptGroup$Node;-><init>(Landroid/support/v8/renderscript/Script;)V

    .line 751
    .restart local v0    # "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_3
    iget-object v1, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public create()Landroid/support/v8/renderscript/ScriptGroup;
    .locals 26

    .prologue
    .line 882
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 883
    new-instance v2, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v23, "Empty script groups are not allowed"

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 887
    :cond_0
    const/4 v9, 0x0

    .local v9, "ct":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$Node;

    const/16 v23, 0x0

    move/from16 v0, v23

    iput v0, v2, Landroid/support/v8/renderscript/ScriptGroup$Node;->dagNumber:I

    .line 887
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 890
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->validateDAG()V

    .line 892
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 893
    .local v18, "inputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v8/renderscript/ScriptGroup$IO;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v21, "outputs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v8/renderscript/ScriptGroup$IO;>;"
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mKernelCount:I

    new-array v3, v2, [J

    .line 896
    .local v3, "kernels":[J
    const/16 v16, 0x0

    .line 897
    .local v16, "idx":I
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_9

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/support/v8/renderscript/ScriptGroup$Node;

    .line 899
    .local v20, "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    const/4 v10, 0x0

    .local v10, "ct2":I
    :goto_2
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_8

    .line 900
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mKernels:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/support/v8/renderscript/Script$KernelID;

    .line 901
    .local v19, "kid":Landroid/support/v8/renderscript/Script$KernelID;
    add-int/lit8 v17, v16, 0x1

    .end local v16    # "idx":I
    .local v17, "idx":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v3, v16

    .line 903
    const/4 v12, 0x0

    .line 904
    .local v12, "hasInput":Z
    const/4 v13, 0x0

    .line 905
    .local v13, "hasOutput":Z
    const/4 v11, 0x0

    .local v11, "ct3":I
    :goto_3
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_3

    .line 906
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mInputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    iget-object v2, v2, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v0, v19

    if-ne v2, v0, :cond_2

    .line 907
    const/4 v12, 0x1

    .line 905
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 910
    :cond_3
    const/4 v11, 0x0

    :goto_4
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 911
    move-object/from16 v0, v20

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Node;->mOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    iget-object v2, v2, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v0, v19

    if-ne v2, v0, :cond_4

    .line 912
    const/4 v13, 0x1

    .line 910
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 915
    :cond_5
    if-nez v12, :cond_6

    .line 916
    new-instance v2, Landroid/support/v8/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/support/v8/renderscript/ScriptGroup$IO;-><init>(Landroid/support/v8/renderscript/Script$KernelID;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    :cond_6
    if-nez v13, :cond_7

    .line 919
    new-instance v2, Landroid/support/v8/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Landroid/support/v8/renderscript/ScriptGroup$IO;-><init>(Landroid/support/v8/renderscript/Script$KernelID;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_7
    add-int/lit8 v10, v10, 0x1

    move/from16 v16, v17

    .end local v17    # "idx":I
    .restart local v16    # "idx":I
    goto/16 :goto_2

    .line 897
    .end local v11    # "ct3":I
    .end local v12    # "hasInput":Z
    .end local v13    # "hasOutput":Z
    .end local v19    # "kid":Landroid/support/v8/renderscript/Script$KernelID;
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 923
    .end local v10    # "ct2":I
    .end local v20    # "n":Landroid/support/v8/renderscript/ScriptGroup$Node;
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mKernelCount:I

    move/from16 v0, v16

    if-eq v0, v2, :cond_a

    .line 924
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v23, "Count mismatch, should not happen."

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 927
    :cond_a
    const-wide/16 v14, 0x0

    .line 928
    .local v14, "id":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mUseIncSupp:Z

    if-nez v2, :cond_e

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v4, v2, [J

    .line 930
    .local v4, "src":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v5, v2, [J

    .line 931
    .local v5, "dstk":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v6, v2, [J

    .line 932
    .local v6, "dstf":[J
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v7, v2, [J

    .line 934
    .local v7, "types":[J
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_d

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mLines:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;

    .line 936
    .local v8, "cl":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    iget-object v2, v8, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mFrom:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v4, v9

    .line 937
    iget-object v2, v8, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    if-eqz v2, :cond_b

    .line 938
    iget-object v2, v8, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToK:Landroid/support/v8/renderscript/Script$KernelID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/Script$KernelID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v5, v9

    .line 940
    :cond_b
    iget-object v2, v8, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    if-eqz v2, :cond_c

    .line 941
    iget-object v2, v8, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mToF:Landroid/support/v8/renderscript/Script$FieldID;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/Script$FieldID;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v6, v9

    .line 943
    :cond_c
    iget-object v2, v8, Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;->mAllocationType:Landroid/support/v8/renderscript/Type;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/support/v8/renderscript/Type;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v24

    aput-wide v24, v7, v9

    .line 934
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 945
    .end local v8    # "cl":Landroid/support/v8/renderscript/ScriptGroup$ConnectLine;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-virtual/range {v2 .. v7}, Landroid/support/v8/renderscript/RenderScript;->nScriptGroupCreate([J[J[J[J[J)J

    move-result-wide v14

    .line 946
    const-wide/16 v24, 0x0

    cmp-long v2, v14, v24

    if-nez v2, :cond_f

    .line 947
    new-instance v2, Landroid/support/v8/renderscript/RSRuntimeException;

    const-string v23, "Object creation error, should not happen."

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 951
    .end local v4    # "src":[J
    .end local v5    # "dstk":[J
    .end local v6    # "dstf":[J
    .end local v7    # "types":[J
    :cond_e
    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/ScriptGroup$Builder;->calcOrder()Z

    .line 954
    :cond_f
    new-instance v22, Landroid/support/v8/renderscript/ScriptGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    move-object/from16 v0, v22

    invoke-direct {v0, v14, v15, v2}, Landroid/support/v8/renderscript/ScriptGroup;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    .line 955
    .local v22, "sg":Landroid/support/v8/renderscript/ScriptGroup;
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/support/v8/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    .line 956
    const/4 v9, 0x0

    :goto_6
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_10

    .line 957
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mOutputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$IO;

    aput-object v2, v23, v9

    .line 956
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 960
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/support/v8/renderscript/ScriptGroup$IO;

    move-object/from16 v0, v22

    iput-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    .line 961
    const/4 v9, 0x0

    :goto_7
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_11

    .line 962
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/support/v8/renderscript/ScriptGroup;->mInputs:[Landroid/support/v8/renderscript/ScriptGroup$IO;

    move-object/from16 v23, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v8/renderscript/ScriptGroup$IO;

    aput-object v2, v23, v9

    .line 961
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 964
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mNodes:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptGroup;->access$002(Landroid/support/v8/renderscript/ScriptGroup;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 965
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v8/renderscript/ScriptGroup$Builder;->mUseIncSupp:Z

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptGroup;->access$102(Landroid/support/v8/renderscript/ScriptGroup;Z)Z

    .line 966
    return-object v22
.end method
