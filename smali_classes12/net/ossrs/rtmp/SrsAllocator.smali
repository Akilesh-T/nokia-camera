.class public final Lnet/ossrs/rtmp/SrsAllocator;
.super Ljava/lang/Object;
.source "SrsAllocator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/ossrs/rtmp/SrsAllocator$Allocation;
    }
.end annotation


# instance fields
.field private availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

.field private volatile availableSentinel:I

.field private final individualAllocationSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "individualAllocationSize"    # I

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/ossrs/rtmp/SrsAllocator;-><init>(II)V

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "individualAllocationSize"    # I
    .param p2, "initialAllocationCount"    # I

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lnet/ossrs/rtmp/SrsAllocator;->individualAllocationSize:I

    .line 82
    add-int/lit8 v1, p2, 0xa

    iput v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableSentinel:I

    .line 83
    iget v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableSentinel:I

    new-array v1, v1, [Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    iput-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableSentinel:I

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    new-instance v2, Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    invoke-direct {v2, p0, p1}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;-><init>(Lnet/ossrs/rtmp/SrsAllocator;I)V

    aput-object v2, v1, v0

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized allocate(I)Lnet/ossrs/rtmp/SrsAllocator$Allocation;
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v2, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableSentinel:I

    if-ge v0, v2, :cond_1

    .line 91
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size()I

    move-result v2

    if-lt v2, p1, :cond_0

    .line 92
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    aget-object v1, v2, v0

    .line 93
    .local v1, "ret":Lnet/ossrs/rtmp/SrsAllocator$Allocation;
    iget-object v2, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    const/4 v3, 0x0

    aput-object v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .end local v1    # "ret":Lnet/ossrs/rtmp/SrsAllocator$Allocation;
    .end local p1    # "size":I
    :goto_1
    monitor-exit p0

    return-object v1

    .line 90
    .restart local p1    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    :try_start_1
    new-instance v1, Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    iget v2, p0, Lnet/ossrs/rtmp/SrsAllocator;->individualAllocationSize:I

    if-le p1, v2, :cond_2

    .end local p1    # "size":I
    :goto_2
    invoke-direct {v1, p0, p1}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;-><init>(Lnet/ossrs/rtmp/SrsAllocator;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 90
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 98
    .restart local p1    # "size":I
    :cond_2
    :try_start_2
    iget p1, p0, Lnet/ossrs/rtmp/SrsAllocator;->individualAllocationSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public declared-synchronized release(Lnet/ossrs/rtmp/SrsAllocator$Allocation;)V
    .locals 4
    .param p1, "allocation"    # Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->clear()V

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableSentinel:I

    if-ge v0, v1, :cond_1

    .line 105
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lnet/ossrs/rtmp/SrsAllocator$Allocation;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 106
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    aput-object p1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :goto_1
    monitor-exit p0

    return-void

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 111
    :cond_1
    :try_start_1
    iget v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableSentinel:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    array-length v2, v2

    if-le v1, v2, :cond_2

    .line 112
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    iget-object v2, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    iput-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    .line 114
    :cond_2
    iget-object v1, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableAllocations:[Lnet/ossrs/rtmp/SrsAllocator$Allocation;

    iget v2, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableSentinel:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lnet/ossrs/rtmp/SrsAllocator;->availableSentinel:I

    aput-object p1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
