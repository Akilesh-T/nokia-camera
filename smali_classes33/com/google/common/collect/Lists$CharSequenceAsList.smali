.class final Lcom/google/common/collect/Lists$CharSequenceAsList;
.super Ljava/util/AbstractList;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Lists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CharSequenceAsList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private final sequence:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/CharSequence;

    .prologue
    .line 795
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 796
    iput-object p1, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    .line 797
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Character;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/google/common/collect/Lists$CharSequenceAsList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkElementIndex(II)I

    .line 802
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 792
    invoke-virtual {p0, p1}, Lcom/google/common/collect/Lists$CharSequenceAsList;->get(I)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/google/common/collect/Lists$CharSequenceAsList;->sequence:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method
