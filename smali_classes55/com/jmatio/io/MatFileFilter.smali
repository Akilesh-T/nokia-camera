.class public Lcom/jmatio/io/MatFileFilter;
.super Ljava/lang/Object;


# instance fields
.field private filter:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jmatio/io/MatFileFilter;->filter:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lcom/jmatio/io/MatFileFilter;-><init>()V

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/jmatio/io/MatFileFilter;->addArrayName(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addArrayName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/jmatio/io/MatFileFilter;->filter:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/jmatio/io/MatFileFilter;->filter:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/jmatio/io/MatFileFilter;->filter:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
