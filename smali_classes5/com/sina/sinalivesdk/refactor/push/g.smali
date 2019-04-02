.class public final Lcom/sina/sinalivesdk/refactor/push/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/sina/sinalivesdk/refactor/push/g;",
        ">;"
    }
.end annotation


# static fields
.field private static a:J

.field private static b:J


# instance fields
.field private c:J

.field private d:J

.field private e:J

.field private f:I

.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    sput-wide v0, Lcom/sina/sinalivesdk/refactor/push/g;->a:J

    sput-wide v0, Lcom/sina/sinalivesdk/refactor/push/g;->b:J

    new-instance v0, Lcom/sina/sinalivesdk/refactor/push/h;

    invoke-direct {v0}, Lcom/sina/sinalivesdk/refactor/push/h;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/g;->c:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/g;->d:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/g;->e:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->f:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/sina/sinalivesdk/refactor/push/g;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->i:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->j:J

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->k:[B

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->d:J

    return-wide v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/sina/sinalivesdk/refactor/push/g;->f:I

    return-void
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/g;->d:J

    return-void
.end method

.method public final a(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->h:Z

    return-void
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lcom/sina/sinalivesdk/refactor/push/g;->k:[B

    return-void
.end method

.method public final b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/g;->e:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->g:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->h:Z

    return v0
.end method

.method public final c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/g;->i:J

    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->f:I

    and-int/lit8 v0, v0, 0x40

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    .prologue
    .line 0
    check-cast p1, Lcom/sina/sinalivesdk/refactor/push/g;

    .line 3000
    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->c:J

    .line 4000
    iget-wide v2, p1, Lcom/sina/sinalivesdk/refactor/push/g;->c:J

    .line 2000
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 5000
    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->d:J

    .line 2000
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6000
    iget-wide v2, p1, Lcom/sina/sinalivesdk/refactor/push/g;->d:J

    .line 2000
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    :goto_0
    return v0

    .line 7000
    :cond_0
    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->c:J

    .line 2000
    sget-wide v2, Lcom/sina/sinalivesdk/refactor/push/g;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 0
    goto :goto_0
.end method

.method public final d(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/g;->j:J

    return-void
.end method

.method public final d()Z
    .locals 1

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->f:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->j:J

    return-wide v0
.end method

.method public final e(J)V
    .locals 3

    iput-wide p1, p0, Lcom/sina/sinalivesdk/refactor/push/g;->c:J

    sget-wide v0, Lcom/sina/sinalivesdk/refactor/push/g;->b:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/sina/sinalivesdk/refactor/push/g;->a:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/sina/sinalivesdk/refactor/push/g;->a:J

    sput-wide v0, Lcom/sina/sinalivesdk/refactor/push/g;->b:J

    sput-wide p1, Lcom/sina/sinalivesdk/refactor/push/g;->a:J

    :cond_0
    return-void
.end method

.method public final f()[B
    .locals 1

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->k:[B

    return-object v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->c:J

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "id:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/sina/sinalivesdk/refactor/push/g;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "prev:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/sina/sinalivesdk/refactor/push/g;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "seq:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v2, p0, Lcom/sina/sinalivesdk/refactor/push/g;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "data:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->k:[B

    .line 1000
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 0
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, " bytes}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1000
    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/g;->c:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/g;->d:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Lcom/sina/sinalivesdk/refactor/push/g;->e:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->g:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->h:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->i:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->j:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/sina/sinalivesdk/refactor/push/g;->k:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
