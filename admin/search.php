<?php
// include header file
include 'header.php'; ?>
        <div class="admin-content-container">
            <div class="row">
            <h2 class="admin-heading">All Orders</h2>
            <nav class="navbar navbar-light bg-light">
            <form class="form-inline" action="" method="Get">
                <input class="form-control mr-sm-2" type="search" required value="<?php if(isset($_GET['search'])){echo $_GET['search'];}?>" name="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit" >Search</button>
            </form>
            <form class="form-inline" action="date_orders.php" method="Get" style="margin-top: 30px;">
                <label for="">From Date</label>
                <input class="form-control mr-sm-2" type="date" required value="" name="from_date" placeholder="Search" aria-label="Search">
                <label for="">To Date</label>
                <input class="form-control mr-sm-2" type="date" required value="" name="to_date" placeholder="Search" aria-label="Search">
                <button class="btn btn-success my-2 my-sm-0" type="submit" >Search</button>
            </form>
            </nav>
            </div>
            <!-- <div class="col-md-12">
                <div class="card" mt-4>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>ORDER NO.</th>
                                    <th>Product Details</th>
                                    <th>QTY.</th>
                                    <th>Customer Details</th>
                                    <th>Order Date</th>
                                </tr>
                            </thead>
                            <tbody>
                            <?php 
                                // $con=mysqli_connect("localhost","root","","shopping_db");
                                // if(isset($_GET['search']))
                                // {
                                // $filtervalues=$_GET['search'];
                                // $query="SELECT 'f_name' FROM `shopping_db` order by id ASC ";
                                // $query_run = mysqli_query($con,$query);

                                // if(mysqli_num_rows($query_run)>0)
                                //     {
                                //         foreach($query_run as $items)
                                //         {
                                //         ?>
                                //         <tr>
                                //             <td><?=$items['order_id'];?></td>
                                //             <td><?=$items['product_details'];?></td>
                                //             <td><?=$items['qty'];?></td>
                                //             <td><?=$items['customer_details'];?></td>
                                //             <td><?=$items['order_date'];?></td>
                                //         </tr>
                                //         <?php
                                //         }
                                //     }
                                //     else
                                //     {
                                //     ?>
                                //         <tr>
                                //             <td colspan="4">No Record Found!</td>
                                //         </tr>
                                //         <?php
                                //     }
                                // }
                            ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> -->
            <?php
            $limit = 5;
            $db = new Database();
            $db->sql('SELECT order_products.product_id,order_products.order_id,order_products.total_amount,order_products.product_qty,order_products.delivery,order_products.product_user,order_products.order_date,products.featured_image,user.f_name,user.address,user.city FROM order_products LEFT JOIN products ON FIND_IN_SET(products.product_id,order_products.product_id) inner join user on user.user_id = order_products.product_user where user.f_name like "%'.$_GET['search'].'%"');
                $result = $db->getResult();
                if(count($result) > 0) {  ?>
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                            <th>ORDER No.</th>
                            <th width="300px">Product Details</th>
                            <th>QTY.</th>
                            <th>Total Amount</th>
                            <th>Customer Details</th>
                            <th>Order Date</th>
                            <!-- <th>Payment Status</th> -->
                            <th>Delivery Status</th>
                            </thead>
                            <tbody>
                            <?php foreach($result as $row) { 
                                for($i=0;$i<count($row);$i++){
                                ?>
                                
                                <tr>
                                    <td><?php echo 'ODR00'.$row[$i]['order_id']; ?></td>
                                    <td>
                                    <?php
                                    $product_code = array_filter(explode(',',$row[$i]['product_id']));
                                    $product_qty = array_filter(explode(',',$row[$i]['product_qty']));
                                       for($p=0;$p<count($product_code);$p++){ ?>
                                        <b>Product Code: </b><?php echo 'PDR00'.$product_code[$p]; ?>
                                        <b>Quantity: </b><?php echo $product_qty[$p]; ?>
                                        <br>
                                    <?php } ?>

                                    </td>
                                    <td><?php echo array_sum($product_qty); ?></td>
                                    <td><?php echo $currency_format.' '.$row[$i]['total_amount']; ?></td>
                                    <td>
                                        <b>Name : </b><?php echo $row[$i]['f_name']; ?><br>
                                        <b>Address : </b><?php echo $row[$i]['address']; ?><br>
                                        <b>City : </b><?php echo $row[$i]['city']; ?><br>
                                    </td>
                                    <td><?php echo date('d M, Y',strtotime($row[$i]['order_date'])); ?></td>
                                    <!-- <td>
                                        <?php
                                            //if($row[$i]['payment_status'] == 'credit'){ ?>
                                                <span class="label label-success">Paid</span>
                                        <?php //}?>
                                    </td> -->
                                    <td>
                                        <?php
                                            if($row[$i]['delivery'] == '1'){ ?>
                                                <span>Delivered</span>
                                        <?php }else{ ?>
                                                <a class="btn btn-sm btn-primary order_complete" href="" data-id="<?php echo $row[$i]['order_id']; ?>">complete</a>
                                        <?php } ?>
                                    </td>
                                </tr>
                            <?php } 
                            }?>
                            </tbody>
                        </table>
                    <?php
                }else { ?>
                        <div class="not-found">!!! No Orders Found !!!</div>
                <?php } ?>
                <!-- <div class="pagination-outer">
                    <?php 
                    // echo $db->pagination('order_products','products ON order_products.product_id=products.product_id
                    // LEFT JOIN user ON order_products.product_user=user.user_id LEFT JOIN payments ON payments.txn_id = order_products.pay_req_id',null,$limit); 
                    ?>
                </div> -->
        </div>
<?php
//    include footer file
    include "footer.php";
?>
