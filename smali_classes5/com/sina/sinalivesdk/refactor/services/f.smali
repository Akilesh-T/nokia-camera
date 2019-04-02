.class public final Lcom/sina/sinalivesdk/refactor/services/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/services/f;->d:I

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/f;->a:Ljava/lang/String;

    const/4 v0, 0x3

    .line 2000
    iput v0, p0, Lcom/sina/sinalivesdk/refactor/services/f;->c:I

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/services/f;->d:I

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/services/f;->a:Ljava/lang/String;

    iput p2, p0, Lcom/sina/sinalivesdk/refactor/services/f;->b:I

    .line 1000
    iput p3, p0, Lcom/sina/sinalivesdk/refactor/services/f;->c:I

    .line 0
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/services/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/services/f;->b:I

    return v0
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/services/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/services/f;->d:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/services/f;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[host="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sina/sinalivesdk/refactor/services/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sina/sinalivesdk/refactor/services/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", failedTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sina/sinalivesdk/refactor/services/f;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
