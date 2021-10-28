<?php

declare(strict_types=1);
/**
 * This file is part of Hyperf.
 *
 * @link     https://www.hyperf.io
 * @document https://hyperf.wiki
 * @contact  group@hyperf.io
 * @license  https://github.com/hyperf/hyperf/blob/master/LICENSE
 */
namespace App\Controller;

use App\Logic\DistrictLogic;
use Hyperf\Di\Annotation\Inject;
use Hyperf\Guzzle\ClientFactory;
use Hyperf\Utils\Codec\Json;

class IndexController extends AbstractController
{
    /**
     * @Inject
     * @var DistrictLogic
     */
    private $logic;

    public function index(ClientFactory $clientFactory)
    {
        $areas = [
            '1010000' => '北京',
            '1020000' => '上海',
            '1160000' => '江苏',
            '1300000' => '浙江',
            '1180000' => '广东',
            '1080000' => '山东',
            '1110000' => '河北',
            '1120000' => '河南',
            '1220000' => '四川',
            '1030000' => '天津',
            '1040000' => '重庆',
            '1050000' => '黑龙江',
            '1060000' => '吉林',
            '1070000' => '辽宁',
            '1090000' => '山西',
            '1100000' => '陕西',
            '1130000' => '湖北',
            '1140000' => '湖南',
            '1150000' => '海南',
            '1170000' => '江西',
            '1190000' => '广西',
            '1200000' => '云南',
            '1210000' => '贵州',
            '1230000' => '内蒙古',
            '1240000' => '宁夏',
            '1250000' => '甘肃',
            '1260000' => '青海',
            '1270000' => '西藏',
            '1280000' => '新疆',
            '1290000' => '安徽',
            '1310000' => '福建',
            '1340000' => '香港',
            '1350000' => '台湾',
            '1360000' => '澳门',
            '1370000' => '海外',
        ];
        $options = [];
        // $client 为协程化的 GuzzleHttp\Client 对象
        $client = $clientFactory->create($options);
        $getAreaUrl = 'http://www.jyeoo.com/api/area2?code=';
        foreach($areas as $code => $area){
            $response = $client->post($getAreaUrl.$code);
            $body = $response->getBody()->getContents();
            $arr = Json::decode($body, true);
            if($arr['S'] == 0){
                $url = 'http://www.jyeoo.com/ushare/getschools';
                foreach($arr['D'] as $item){
                    $response = $client->post($url, ['form_params' => ['a' => $item['PID'], 'b' => 7]]);
                    $body = $response->getBody()->getContents();
                    //$arr = Json::decode($body, true);
                    var_dump($body);
                    break;
                }
            }
            break;
        }

        return $body;
    }
}
